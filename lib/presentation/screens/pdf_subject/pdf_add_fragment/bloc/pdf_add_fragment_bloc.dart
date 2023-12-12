import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_size_getter/file_input.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:moki_tutor/data/api/http_client/request_exception.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';

import '../../../../../domain/interfaces/i_api.dart';

import '../../../../../domain/locator/locator.dart';

part 'pdf_add_fragment_event.dart';
part 'pdf_add_fragment_state.dart';
part 'pdf_add_fragment_bloc.freezed.dart';

class PdfAddFragmentBloc
    extends Bloc<PdfAddFragmentEvent, PdfAddFragmentState> {
  PdfAddFragmentBloc({required this.subjectId, required this.displayOrder})
      : super(const _ScreenState()) {
    on<PdfAddFragmentEvent>((event, emitter) => event.map(
        audioAdded: (event) => onAudioAdded(event, emitter),
        imageAdded: (event) => onImageAdded(event, emitter),
        fragmentSaveClicked: (event) => onFragmentSaveClicked(event, emitter),
        deleteAudio: (_) => onDeleteAudio(emitter)));

    _screenState = const _ScreenState();
  }

  final int subjectId;
  final int displayOrder;
  final api = getIt<IApi>();

  late _ScreenState _screenState;
  late bool isLandscape;

  void onAudioAdded(
      _EventAudioAdded event, Emitter<PdfAddFragmentState> emitter) {
    _screenState = _screenState.copyWith(
        audioPath: event.audioPath, duration: event.duration);
    emitter(_screenState);
  }

  Future<void> onImageAdded(
      _EventImageAdded event, Emitter<PdfAddFragmentState> emitter) async {
    late File tempFile;
    late Size size;
    if (p.extension(event.imagePath) == '.pdf') {
      final file = File(event.imagePath);
      late final Uint8List image;

      List<Uint8List> images = [];

      await for (var page
          in Printing.raster(file.readAsBytesSync(), dpi: 300)) {
        images.add(await page.toPng());
      }
      image = images.first;
      Directory tempDir = await getTemporaryDirectory();

      final filePath = '${tempDir.path}/temp.png';

      tempFile = await File(filePath).writeAsBytes(image);
    } else {
      tempFile = File(event.imagePath);
    }
    size = ImageSizeGetter.getSize(FileInput(tempFile));
    isLandscape = size.width > size.height;
    _screenState = _screenState.copyWith(imagePath: tempFile.path);
    emitter(_screenState);
  }

  Future<void> onFragmentSaveClicked(_EventFragmentSaveClicked event,
      Emitter<PdfAddFragmentState> emitter) async {
    _screenState = _screenState.copyWith(isSavePending: true);
    emitter(_screenState);
    try {
      await api.addFragment(
          subjectId: subjectId,
          displayOrder: displayOrder,
          title: event.title,
          description: event.description,
          imagePath: _screenState.imagePath!,
          isLandscape: isLandscape,
          audioPath: _screenState.audioPath,
          duration: _screenState.duration);
      emitter(const PdfAddFragmentState.requestSuccess());
    } on RequestException catch (e) {
      emitter(PdfAddFragmentState.requestError(
          errorText: e.response?['message'] as String?));
    } on Object {
      emitter(const PdfAddFragmentState.requestError());
      rethrow;
    }
  }

  void onDeleteAudio(Emitter<PdfAddFragmentState> emitter) {
    _screenState = _screenState.copyWith(audioPath: null);
    emitter(_screenState);
  }
}
