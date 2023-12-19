import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:printing/printing.dart';

import '../../../../../../data/api/http_client/request_exception.dart';
import '../../../../../../domain/interfaces/i_api.dart';
import '../../../../../../domain/locator/locator.dart';

part 'presentation_add_fragment_state.dart';
part 'presentation_add_fragment_event.dart';
part 'presentation_add_fragment_bloc.freezed.dart';

class PresentationAddFragmentBloc
    extends Bloc<PresentationAddFragmentEvent, PresentationAddFragmentState> {
  PresentationAddFragmentBloc(
      {required this.presentationId, required this.displayOrder})
      : super(const _ScreenState()) {
    on<PresentationAddFragmentEvent>((event, emitter) => event.map(
        audioAdded: (event) => onAudioAdded(event, emitter),
        imageAdded: (event) => onImageAdded(event, emitter),
        fragmentSaveClicked: (event) => onFragmentSaveClicked(event, emitter),
        deleteAudio: (_) => onDeleteAudio(emitter)));

    _screenState = const _ScreenState();
  }

  final int presentationId;
  final int displayOrder;
  final api = getIt<IApi>();

  late _ScreenState _screenState;
  late bool isLandscape;

  void onAudioAdded(
      _EventAudioAdded event, Emitter<PresentationAddFragmentState> emitter) {
    _screenState = _screenState.copyWith(
        audioPath: event.audioPath, duration: event.duration);
    emitter(_screenState);
  }

  Future<void> onImageAdded(_EventImageAdded event,
      Emitter<PresentationAddFragmentState> emitter) async {
    Uint8List? image;
    if (p.extension(event.imagePath) == '.pdf') {
      final file = File(event.imagePath);

      List<Uint8List> images = [];

      await for (var page
          in Printing.raster(file.readAsBytesSync(), dpi: 300)) {
        images.add(await page.toPng());
      }
      image = images.first;
    }

    _screenState = _screenState.copyWith(
        image: image != null ? File.fromRawPath(image) : File(event.imagePath));
    emitter(_screenState);
  }

  Future<void> onFragmentSaveClicked(_EventFragmentSaveClicked event,
      Emitter<PresentationAddFragmentState> emitter) async {
    _screenState = _screenState.copyWith(isSavePending: true);
    emitter(_screenState);
    try {
      await api.addPresentationFragment(
          presentationId: presentationId,
          displayOrder: displayOrder,
          title: event.title,
          description: event.description,
          image: _screenState.image!,
          isLandscape: isLandscape,
          audioPath: _screenState.audioPath,
          duration: _screenState.duration);
      emitter(const PresentationAddFragmentState.requestSuccess());
    } on RequestException catch (e) {
      emitter(PresentationAddFragmentState.requestError(
          errorText: e.response?['message'] as String?));
    } on Object {
      emitter(const PresentationAddFragmentState.requestError());
      rethrow;
    }
  }

  void onDeleteAudio(Emitter<PresentationAddFragmentState> emitter) {
    _screenState = _screenState.copyWith(audioPath: null);
    emitter(_screenState);
  }
}
