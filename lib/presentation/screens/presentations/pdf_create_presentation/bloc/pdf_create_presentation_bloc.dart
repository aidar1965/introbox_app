import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/data/api/models/requests/fragment_request_data.dart';
import 'package:printing/printing.dart';

import '../../../../../../domain/interfaces/i_api.dart';
import '../../../../../../domain/locator/locator.dart';
import '../../../../../../domain/models/pdf_fragment_sample.dart';

part 'pdf_create_presentation_state.dart';
part 'pdf_create_presentation_event.dart';
part 'pdf_create_presentation_bloc.freezed.dart';

class PdfCreatePresentationBloc
    extends Bloc<PdfCreatePresentationEvent, PdfCreatePresentationState> {
  PdfCreatePresentationBloc()
      : super(const PdfCreatePresentationState.screenState()) {
    on<PdfCreatePresentationEvent>((event, emitter) => event.map(
        convertPdf: (event) => _convertPdf(event, emitter),
        savePdfPresentation: (event) => _savePdfPresentation(event, emitter)));
    _screenState = const _ScreenState();
  }

  final api = getIt<IApi>();
  late _ScreenState _screenState;

  Future<void> _convertPdf(_EventConvertFile event,
      Emitter<PdfCreatePresentationState> emitter) async {
    _screenState = _screenState.copyWith(isPending: true);
    emitter(_screenState);
    int i = 0;
    final List<Uint8List> pdfImageList = [];

    final file = event.pdfFile;
    _screenState = _screenState.copyWith(countFileGenerated: i);
    emitter(_screenState);
    await for (var page in Printing.raster(file, dpi: 300)) {
      final image = await page.toPng();

      pdfImageList.add(image);
      _screenState = _screenState.copyWith(countFileGenerated: i);
      emitter(_screenState);
      i++;
    }
    _screenState = _screenState.copyWith(
        isPending: false,
        countFileGenerated: null,
        pdfFragmentList: pdfImageList
            .map((e) => PdfFragmentSample(image: e, isTitleOverImage: false))
            .toList());
    emitter(_screenState);
  }

  Future<void> _savePdfPresentation(_EventSavePdfPresentation event,
      Emitter<PdfCreatePresentationState> emitter) async {
    _screenState = _screenState.copyWith(
      isPending: true,
    );
    emitter(_screenState);
    final List<FragmentRequestData> fragments = [];
    int index = 0;
    for (final f in event.pdfFragmentList) {
      fragments.add(
        FragmentRequestData(
            title: f.title ?? '',
            description: f.description ?? '',
            image: (
              file: f.image,
              fileName: 'image$index.png',
              isLandscape: true,
              isTitleOverImage: f.isTitleOverImage,

              ///TODO: Убрать
            ),
            audioBytes: f.audioBytes,
            duration: f.duration),
      );
      index++;
    }
    try {
      await api.addPresentation(
          pdfFile: event.pdfFile,
          pdfFileName: event.pdfFileName,
          title: event.title,
          description: event.description,
          isAudio: event.isAudio,
          fragments: fragments);

      emitter(const PdfCreatePresentationState.saveSuccess());
    } on Object {
      _screenState = _screenState.copyWith(
        isPending: false,
      );
      emitter(_screenState);
      emitter(const PdfCreatePresentationState.saveError());
    }
  }
}
