import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:introbox/domain/interfaces/i_api.dart';
import 'package:introbox/generated/locale_keys.g.dart';

import '../../../../../domain/locator/locator.dart';
import '../../../../../domain/models/presentation.dart';
import '../../../../domain/models/channel.dart';
import '../../../../domain/models/course.dart';

part 'presentations_event.dart';
part 'presentations_state.dart';
part 'presentations_bloc.freezed.dart';

class PresentationsBloc extends Bloc<PresentationsEvent, PresentationsState> {
  PresentationsBloc() : super(const _StatePending()) {
    on<PresentationsEvent>(
      (event, emitter) => event.map(
          deletePresentation: (event) => onDeletePresentation(event, emitter),
          initialDataRequested: (
            event,
          ) =>
              onInitialDataRequested(event, emitter),
          publishPresentation: (event) => onPublishPresentation(event, emitter),
          reloadData: (_) => reloadData(),
          onPasswordChanged: (event) => onPasswordChanged(event, emitter),
          addPresentationToCourse: (event) =>
              onAddPresentationToCourse(event, emitter),
          changeChannel: (event) => onChangeChannel(event, emitter)),
    );

    add(const PresentationsEvent.initialDataRequested());
    _screenState =
        const _ScreenState(presentations: [], courses: [], channels: []);
  }

  final api = getIt<IApi>();

  late _ScreenState _screenState;

  int limit = 10;
  int offset = 0;
  int? total;
  bool isFirstLoad = true;
  String searchText = '';
  late List<Channel> channels;

  Future<void> onDeletePresentation(_EventDeletePresentation event,
      Emitter<PresentationsState> emitter) async {
    try {
      await api.deletePresentation(id: event.id);
      final oldPresentations =
          _screenState.presentations.map((e) => e).toList();
      oldPresentations.removeWhere((element) => element.id == event.id);
      _screenState = _screenState.copyWith(presentations: oldPresentations);
      emitter(_screenState);
    } on Object {
      emitter(const PresentationsState.requestError());
      rethrow;
    }
  }

  Future<void> onInitialDataRequested(
    _EventInitialDataRequested event,
    Emitter<PresentationsState> emitter,
  ) async {
    if (event.searchText != searchText) {
      offset = 0;
      total = null;
      isFirstLoad = true;
      _screenState = _screenState.copyWith(presentations: [], courses: []);
      searchText = event.searchText ?? '';
    }
    if (total != null && total! <= _screenState.presentations.length) {
      return;
    }
    if (isFirstLoad) {
      print('pending');
      emitter(const PresentationsState.pending());
    }
    try {
      channels = await api.getChannels();
      final paginatedPresentations = await api.getPresentations(
          offset: offset, limit: limit, searchText: event.searchText);
      final oldPresentations =
          _screenState.presentations.map((e) => e).toList();
      oldPresentations.addAll(paginatedPresentations.presentations);
      print(oldPresentations.length);
      offset = paginatedPresentations.offset;
      total = paginatedPresentations.count;
      print('total: $total');

      /// TODO сделать пагинацию
      final paginatedCourses = await api.getCourses(limit: 100);
      _screenState = _screenState.copyWith(
          presentations: oldPresentations,
          courses: paginatedCourses.courses.toList(),
          channels: channels);
      isFirstLoad = false;
      emitter(_screenState);
    } on Object {
      emitter(const PresentationsState.loadingError());
      rethrow;
    }
  }

  void reloadData() {
    offset = 0;
    total = null;
    isFirstLoad = true;
    _screenState = _screenState.copyWith(presentations: [], courses: []);

    add(const PresentationsEvent.initialDataRequested());
  }

  Future<void> onPublishPresentation(_EventPublishPresentation event,
      Emitter<PresentationsState> emitter) async {
    try {
      await api.publishPresentation(id: event.id);
      final oldPresentations = _screenState.presentations;
      final newPresentations = oldPresentations.map((e) {
        if (e.id != event.id) {
          return e;
        } else {
          return Presentation(
              id: e.id,
              title: e.title,
              isAudio: e.isAudio,
              isPublic: e.isPublic,
              includePdf: e.includePdf,
              freeMode: e.freeMode,
              hasPassword: e.hasPassword,
              createdAt: e.createdAt,
              isPublished: e.isPublished ? false : true,
              channel: e.channel,
              description: e.description,
              pdfFile: e.pdfFile,
              firstImage: e.firstImage,
              links: e.links,
              course: e.course);
        }
      }).toList();
      //add(const PresentationsEvent.reloadData());
      _screenState = _screenState.copyWith(presentations: newPresentations);
      emitter(_screenState);
    } on Object {
      emitter(const PresentationsState.requestError());
      rethrow;
    }
  }

  Future<void> onPasswordChanged(_EventOnPasswordChanged event,
      Emitter<PresentationsState> emitter) async {
    if (event.passwordWithConfirmation.password !=
        event.passwordWithConfirmation.confirmPassword) {
      print('Пароль и повторение пароля не совпадают');
      emitter(PresentationsState.requestError(
          errorText: LocaleKeys.passwordConfirmNotFit.tr()));
      return;
    }
    try {
      await api.setPresentationPassword(
        password: event.passwordWithConfirmation.password,
        confirmPassword: event.passwordWithConfirmation.confirmPassword,
        id: event.id,
      );
      emitter(const PresentationsState.requestSuccess(
          message: 'Данные успешно сохранены'));
      add(const PresentationsEvent.reloadData());
    } on Object {
      emitter(const PresentationsState.requestError());
      rethrow;
    }
  }

  Future<void> onAddPresentationToCourse(_EventAddPresentationToCourse event,
      Emitter<PresentationsState> emitter) async {
    try {
      await api.addPresentationToCourse(
          presentationId: event.presentationId, courseId: event.courseId);

      add(const PresentationsEvent.reloadData());
    } on Object {
      emitter(const PresentationsState.requestError());
      rethrow;
    }
  }

  Future<void> onChangeChannel(
      _EventChangeChannel event, Emitter<PresentationsState> emitter) async {
    try {
      await api.changeChannel(
          channelId: event.channelId, presentationId: event.presentationId);
      final updatedPresentation =
          await api.getPresentation(event.presentationId);
      print('first image ${updatedPresentation.presentation.firstImage}');
      print(updatedPresentation.presentation.firstImage != null);
      List<Presentation> p = _screenState.presentations.map(
        (e) {
          if (e.id == event.presentationId) {
            return updatedPresentation.presentation;
          } else {
            return e;
          }
        },
      ).toList();
      _screenState = _screenState.copyWith(presentations: p);
      emitter(_screenState);
    } on Object {
      emitter(const PresentationsState.requestError());
      rethrow;
    }
  }
}
