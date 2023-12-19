import 'dart:io';

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
  }

  final api = getIt<IApi>();

  Future<void> _convertPdf(_EventConvertFile event,
      Emitter<PdfCreatePresentationState> emitter) async {
    emitter(const PdfCreatePresentationState.screenState(
      isPending: true,
    ));
    final List<Uint8List> pdfImageList = [];

    final file = File(event.pdfFilePath);
    await for (var page in Printing.raster(file.readAsBytesSync(), dpi: 300)) {
      final image = await page.toPng();

      pdfImageList.add(image);
    }

    emitter(PdfCreatePresentationState.screenState(
        pdfFragmentList:
            pdfImageList.map((e) => PdfFragmentSample(image: e)).toList()));
  }

  Future<void> _savePdfPresentation(_EventSavePdfPresentation event,
      Emitter<PdfCreatePresentationState> emitter) async {
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

              ///TODO: Убрать
            ),
            audioPath: f.audioPath,
            duration: f.duration),
      );
      index++;
    }
    await api.addPresentation(
        pdfFile: event.pdfFile,
        title: event.title,
        description: event.description,
        isAudio: event.isAudio,
        fragments: fragments);
  }
}
