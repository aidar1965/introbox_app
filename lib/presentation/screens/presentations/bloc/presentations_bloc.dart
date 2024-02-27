import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:introbox/domain/interfaces/i_api.dart';

import '../../../../../domain/locator/locator.dart';
import '../../../../../domain/models/presentation.dart';
import '../../../../domain/models/course.dart';

part 'presentations_event.dart';
part 'presentations_state.dart';
part 'presentations_bloc.freezed.dart';

class PresentationsBloc extends Bloc<PresentationsEvent, PresentationsState> {
  PresentationsBloc() : super(const _StatePending()) {
    on<PresentationsEvent>(
      (event, emitter) => event.map(
          deletePresentation: (event) => onDeletePresentation(event, emitter),
          initialDataRequested: (_) => onInitialDataRequested(emitter),
          publishPresentation: (event) => onPublishPresentation(event, emitter),
          reloadData: (_) => reloadData(),
          onPasswordChanged: (event) => onPasswordChanged(event, emitter),
          addPresentationToCourse: (event) =>
              onAddPresentationToCourse(event, emitter)),
    );

    add(const PresentationsEvent.initialDataRequested());
    _screenState = const _ScreenState(presentations: [], courses: []);
  }

  final api = getIt<IApi>();

  late _ScreenState _screenState;

  int limit = 50;
  int offset = 0;
  int? total;

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
      Emitter<PresentationsState> emitter) async {
    if (total != null && total! <= _screenState.presentations.length) {
      return;
    }
    emitter(const PresentationsState.pending());
    try {
      final paginatedPresentations =
          await api.getPresentations(offset: offset, limit: limit);
      final oldPresentations =
          _screenState.presentations.map((e) => e).toList();
      oldPresentations.addAll(paginatedPresentations.presentations);
      offset = paginatedPresentations.offset;
      total = paginatedPresentations.count;
      final paginatedCourses = await api.getCourses();
      _screenState = _screenState.copyWith(
          presentations: oldPresentations,
          courses: paginatedCourses.courses.toList());
      emitter(_screenState);
    } on Object {
      emitter(const PresentationsState.loadingError());
      rethrow;
    }
  }

  void reloadData() {
    offset = 0;
    total = null;
    _screenState = _screenState.copyWith(presentations: [], courses: []);
    print('reload');
    add(const PresentationsEvent.initialDataRequested());
  }

  Future<void> onPublishPresentation(_EventPublishPresentation event,
      Emitter<PresentationsState> emitter) async {
    try {
      await api.publishPresentation(id: event.id);
      add(const PresentationsEvent.reloadData());
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
      emitter(const PresentationsState.requestError(
          errorText: 'Пароль и повторение пароля не совпадают'));
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
}
