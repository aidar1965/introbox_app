import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/api/http_client/request_exception.dart';
import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/channel.dart';
import '../../../../domain/models/pdf_fragment.dart';
import '../../../../domain/models/presentation_with_fragments.dart';

part 'public_presentation_event.dart';
part 'public_presentation_state.dart';
part 'public_presentation_bloc.freezed.dart';

class PublicPresentationBloc
    extends Bloc<PublicPresentationEvent, PublicPresentationState> {
  PublicPresentationBloc(this.id) : super(const _StatePending()) {
    on<PublicPresentationEvent>((event, emitter) => event.map(
        initialDataRequested: (_) => initialDataRequested(emitter),
        nextSlideClicked: (_) => nextSlideClicked(emitter),
        previousSlideClicked: (_) => previousSlideClicked(emitter),
        checkPresentationHasPassword: (_) =>
            checkPresentationHasPassword(emitter),
        sendPassword: (event) => sendPassword(event, emitter),
        fragmentClicked: (event) => fragmentClicked(event, emitter)));

    add(const PublicPresentationEvent.checkPresentationHasPassword());
  }

  final String? id;
  final api = getIt<IApi>();
  late PresentationWithFragments presentationWithFragments;

  late _ScreenState _screenState;

  Future<void> initialDataRequested(
      Emitter<PublicPresentationState> emitter) async {
    if (state is _StateLoadingError) {
      emitter(const PublicPresentationState.loadingError(isPending: true));
    } else {
      emitter(const PublicPresentationState.pending());
    }
    if (id == null) {
      emitter(const PublicPresentationState.idNotSpecified());
      return;
    }
    try {
      presentationWithFragments = await api.getPublicPresentation(id!);
      print(presentationWithFragments.presentation.pdfFile);

      _screenState = _ScreenState(
          selectedFragment: presentationWithFragments.fragments.first,
          isFirst: true,
          isLast: presentationWithFragments.fragments.length == 1,
          presentationTitle: presentationWithFragments.presentation.title,
          presentationDescription:
              presentationWithFragments.presentation.description,
          pdfFile: presentationWithFragments.presentation.pdfFile,
          fragments: presentationWithFragments.fragments,
          channel: presentationWithFragments.presentation.channel);

      emitter(_screenState);
    } on RequestException catch (e) {
      if (e.httpStatusCode == HttpStatus.notFound) {
        emitter(const PublicPresentationState.notFound());
      } else {
        emitter(const PublicPresentationState.loadingError());
      }
    } on Object {
      emitter(const PublicPresentationState.loadingError());
    }
  }

  void nextSlideClicked(Emitter<PublicPresentationState> emitter) {
    final currentIndex = presentationWithFragments.fragments.indexOf(
        presentationWithFragments.fragments.firstWhere(
            (element) => element.id == _screenState.selectedFragment.id));

    _screenState = _screenState.copyWith(
        selectedFragment:
            presentationWithFragments.fragments.elementAt(currentIndex + 1),
        isFirst: false,
        isLast: currentIndex == presentationWithFragments.fragments.length - 2);
    emitter(_screenState);
  }

  void previousSlideClicked(Emitter<PublicPresentationState> emitter) {
    final currentIndex = presentationWithFragments.fragments.indexOf(
        presentationWithFragments.fragments.firstWhere(
            (element) => element.id == _screenState.selectedFragment.id));

    _screenState = _screenState.copyWith(
        selectedFragment:
            presentationWithFragments.fragments.elementAt(currentIndex - 1),
        isFirst: currentIndex == 1,
        isLast: false);
    emitter(_screenState);
  }

  Future<void> checkPresentationHasPassword(
      Emitter<PublicPresentationState> emitter) async {
    emitter(const PublicPresentationState.pending());
    if (id == null) {
      emitter(const PublicPresentationState.idNotSpecified());
      return;
    }
    try {
      final hasPassword = await api.checkPresentationPassword(id!);
      if (hasPassword) {
        emitter(const PublicPresentationState.passwordForm());
      } else {
        add(const PublicPresentationEvent.initialDataRequested());
      }
    } on Object {
      emitter(const PublicPresentationState.checkHasPasswordError());
    }
  }

  Future<void> sendPassword(_EventSendPassword event,
      Emitter<PublicPresentationState> emitter) async {
    emitter(const PublicPresentationState.passwordForm(isPending: true));
    try {
      await api.sendPassword(id: id!, password: event.password);
      add(const PublicPresentationEvent.initialDataRequested());
    } on RequestException catch (e) {
      emitter(const PublicPresentationState.passwordForm());
      if (e.httpStatusCode == HttpStatus.badRequest) {
        emitter(PublicPresentationState.requestError(
            errorText: e.response?['message'] as String?));
      } else {
        emitter(const PublicPresentationState.passwordForm());
        emitter(const PublicPresentationState.requestError());
        rethrow;
      }
    } on Object {
      emitter(const PublicPresentationState.requestError());
      emitter(const PublicPresentationState.passwordForm());
      rethrow;
    }
  }

  void fragmentClicked(
      _EventFragmentClicked event, Emitter<PublicPresentationState> emitter) {
    _screenState = _screenState.copyWith(
      selectedFragment:
          presentationWithFragments.fragments.elementAt(event.index),
      isLast: event.index == presentationWithFragments.fragments.length - 1,
      isFirst: event.index == 0,
    );
    emitter(_screenState);
  }
}
