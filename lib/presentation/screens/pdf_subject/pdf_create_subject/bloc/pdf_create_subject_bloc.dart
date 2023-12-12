import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_size_getter/file_input.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:path_provider/path_provider.dart';

import 'package:printing/printing.dart';

import '../../../../../data/api/models/requests/fragment_request_data.dart';
import '../../../../../domain/interfaces/i_fragments_repository.dart';
import '../../../../../domain/interfaces/i_subject_repository.dart';
import '../../../../../domain/locator/locator.dart';

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

  final subjectRepository = getIt<ISubjectsRepository>();
  final fragmentsRepository = getIt<IFragmentsRepository>();
  final api = getIt<IApi>();

  Future<void> _convertPdf(
      _EventConvertFile event, Emitter<PdfCreateSubjectState> emitter) async {
    emitter(const PdfCreateSubjectState.screenState(
      isPending: true,
    ));
    final List<Uint8List> pdfImageList = [];

    final file = File(event.pdfFilePath);

    await for (var page in Printing.raster(file.readAsBytesSync(), dpi: 300)) {
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
    Directory tempDir = await getTemporaryDirectory();
    for (final f in event.pdfFragmentList) {
      final filePath = '${tempDir.path}/temp.png';

      final tempFile = await File(filePath).writeAsBytes(f.image);
      final size = ImageSizeGetter.getSize(FileInput(tempFile));

      fragments.add(
        FragmentRequestData(
            title: f.title ?? '',
            description: f.description ?? '',
            image: (
              file: f.image,
              fileName: 'image$index.png',
              isLandscape: size.width > size.height
            ),
            audioPath: f.audioPath,
            duration: f.duration),
      );
      index++;
    }
    await api.addPdfSubject(
        pdfFile: event.pdfFile,
        title: event.title,
        description: event.description,
        fragments: fragments);

    emitter(const PdfCreateSubjectState.saveSuccess());
  }
}

class PdfFragmentSample {
  final String? title;
  final String? description;
  final Uint8List image;
  final String? audioPath;
  final int? duration;
  PdfFragmentSample(
      {required this.image,
      this.audioPath,
      this.title,
      this.description,
      this.duration});
}
