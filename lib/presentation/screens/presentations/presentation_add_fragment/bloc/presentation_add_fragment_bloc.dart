import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mime/mime.dart';

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

  final String presentationId;
  final int displayOrder;
  final api = getIt<IApi>();

  late _ScreenState _screenState;
  bool isLandscape = true;

  /// TODO

  void onAudioAdded(
      _EventAudioAdded event, Emitter<PresentationAddFragmentState> emitter) {
    _screenState = _screenState.copyWith(
      audioBytes: event.audioBytes,
      duration: event.duration,
      audioPath: event.audioPath,
    );
    emitter(_screenState);
  }

  Future<void> onImageAdded(_EventImageAdded event,
      Emitter<PresentationAddFragmentState> emitter) async {
    Uint8List? image;
    var mime = lookupMimeType('', headerBytes: event.imageBytes);
    if (extensionFromMime(mime!) == '.pdf') {
      List<Uint8List> images = [];

      await for (var page in Printing.raster(event.imageBytes, dpi: 300)) {
        images.add(await page.toPng());
      }
      image = images.first;
    }

    _screenState = _screenState.copyWith(
        imageBytes: image != null ? image : event.imageBytes);
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
          image: _screenState.imageBytes!,
          isLandscape: isLandscape,
          audio: _screenState.audioBytes,
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
    _screenState = _screenState.copyWith(audioBytes: null);
    emitter(_screenState);
  }
}
