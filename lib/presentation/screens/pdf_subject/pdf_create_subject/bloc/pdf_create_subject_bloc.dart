import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';

import 'package:printing/printing.dart';

import '../../../../../data/api/models/requests/fragment_request_data.dart';

import '../../../../../domain/locator/locator.dart';
import '../../../../../domain/models/pdf_fragment_sample.dart';

part 'pdf_create_subject_bloc.freezed.dart';
part 'pdf_create_subject_event.dart';
part 'pdf_create_subject_state.dart';

class PdfCreateSubjectBloc
    extends Bloc<PdfCreateSubjectEvent, PdfCreateSubjectState> {
  PdfCreateSubjectBloc() : super(const PdfCreateSubjectState.screenState()) {
    on<PdfCreateSubjectEvent>((event, emitter) => event.map(
        convertPdf: (event) => _convertPdf(event, emitter),
        savePdfSubject: (event) => _savePdfSubject(event, emitter)));
  }

  final api = getIt<IApi>();

  Future<void> _convertPdf(
      _EventConvertFile event, Emitter<PdfCreateSubjectState> emitter) async {
    emitter(const PdfCreateSubjectState.screenState(
      isPending: true,
    ));
    final List<Uint8List> pdfImageList = [];

    final file = event.pdfFile;

    await for (var page in Printing.raster(file, dpi: 300)) {
      final image = await page.toPng();

      // final savedFile = await File(filePath).writeAsBytes(image);

      // print(savedFile.path);

      pdfImageList.add(image);
    }

    emitter(PdfCreateSubjectState.screenState(
        pdfFragmentList:
            pdfImageList.map((e) => PdfFragmentSample(image: e)).toList()));
  }

  Future<void> _savePdfSubject(_EventSavePdfSubject event,
      Emitter<PdfCreateSubjectState> emitter) async {
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
            audioBytes: f.audioBytes,
            duration: f.duration),
      );
      index++;
    }
    await api.addPdfSubject(
        pdfFile: event.pdfFile,
        pdfFileName: event.pdfFileName,
        title: event.title,
        description: event.description,
        fragments: fragments);

    emitter(const PdfCreateSubjectState.saveSuccess());
  }
}
