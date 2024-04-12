import 'dart:io';

import 'package:bloc/bloc.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/api/http_client/request_exception.dart';
import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/interfaces/i_auth_controller.dart';
import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/channel.dart';
import '../../../../domain/models/pdf_fragment.dart';
import '../../../../domain/models/presentation_link.dart';
import '../../../../domain/models/presentation_with_fragments.dart';
import 'package:http/http.dart' as http;

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
  final authController = getIt<IAuthController>();
  late PresentationWithFragments presentationWithFragments;
  Uint8List? preloadedImage;
  List<Uint8List?> preloadedImageList = [];

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
      // ignore: unused_local_variable
      for (var element in presentationWithFragments.fragments) {
        preloadedImageList.add(null);
      }

      _screenState = _ScreenState(
          selectedFragment: presentationWithFragments.fragments.first,
          isFirst: true,
          isLast: false,
          presentationTitle: presentationWithFragments.presentation.title,
          presentationDescription:
              presentationWithFragments.presentation.description,
          pdfFile: presentationWithFragments.presentation.pdfFile,
          fragments: presentationWithFragments.fragments,
          channel: presentationWithFragments.presentation.channel,
          isAuthorized: authController.isAuthenticated,
          preloadedImage: preloadedImageList[0]);

      emitter(_screenState);
      preloadedImage = null;
      if (_screenState.selectedFragment != null &&
          _screenState.fragments.indexOf(_screenState.selectedFragment!) !=
              _screenState.fragments.length - 1) {
        preloadedImage = await getNextImage(
            _screenState.selectedFragment!, _screenState.fragments);
        preloadedImageList[1] = preloadedImage;
      }
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

  Future<Uint8List?> getNextImage(
      PdfFragment fragment, List<PdfFragment> fragments) async {
    if (fragment.id == fragments.last.id) {
      return null;
    }
    int currentIndex = fragments.indexOf(fragment);
    if (preloadedImageList[currentIndex + 1] != null) {
      return preloadedImageList[currentIndex + 1];
    }
    if (currentIndex != -1 && currentIndex < fragments.length - 1) {
      final nextFragment = fragments[currentIndex + 1];
      if (nextFragment.imagePath != null) {
        final response = await http.get(Uri.parse(nextFragment.imagePath!));
        if (response.statusCode == 200) {
          preloadedImageList[currentIndex + 1] = response.bodyBytes;
          return preloadedImageList[currentIndex + 1];
        }
      } else {
        preloadedImageList[currentIndex + 1] = null;
        return null;
      }
    }
    preloadedImageList[currentIndex + 1] = null;
    return null;
  }

  void nextSlideClicked(Emitter<PublicPresentationState> emitter) async {
    final currentIndex = presentationWithFragments.fragments.indexOf(
        presentationWithFragments.fragments.firstWhere(
            (element) => element.id == _screenState.selectedFragment!.id));
    if (currentIndex != presentationWithFragments.fragments.length - 1) {
      _screenState = _screenState.copyWith(
          selectedFragment:
              presentationWithFragments.fragments.elementAt(currentIndex + 1),
          isFirst: false,
          isLast:
              currentIndex == presentationWithFragments.fragments.length - 1,
          preloadedImage: preloadedImageList[currentIndex + 1]);
      emitter(_screenState);

      await getNextImage(
          _screenState.selectedFragment!, _screenState.fragments);
    } else {
      _screenState = _screenState.copyWith(
          selectedFragment: null, isFirst: false, isLast: true);
      emitter(_screenState);
    }
  }

  void previousSlideClicked(Emitter<PublicPresentationState> emitter) async {
    if (_screenState.selectedFragment != null) {
      final currentIndex = presentationWithFragments.fragments.indexOf(
          presentationWithFragments.fragments.firstWhere(
              (element) => element.id == _screenState.selectedFragment!.id));

      _screenState = _screenState.copyWith(
          selectedFragment:
              presentationWithFragments.fragments.elementAt(currentIndex - 1),
          isFirst: currentIndex == 1,
          isLast: false,
          preloadedImage: preloadedImageList[currentIndex - 1]);
      emitter(_screenState);

      await getNextImage(
          _screenState.selectedFragment!, _screenState.fragments);
    } else {
      _screenState = _screenState.copyWith(
          selectedFragment: presentationWithFragments.fragments.last,
          isFirst: presentationWithFragments.fragments.length == 1,
          isLast: false,
          preloadedImage: preloadedImageList[
              presentationWithFragments.fragments.length - 1]);
      emitter(_screenState);
    }
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
        preloadedImage: preloadedImageList[event.index]);
    emitter(_screenState);
  }
}
