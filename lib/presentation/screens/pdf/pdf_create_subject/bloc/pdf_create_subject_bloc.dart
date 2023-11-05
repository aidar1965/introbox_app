import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';

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

  Future<void> _convertPdf(
      _EventConvertFile event, Emitter<PdfCreateSubjectState> emitter) async {
    emitter(const PdfCreateSubjectState.screenState(
      isPending: true,
    ));
    final List<Uint8List> pdfImageList = [];

    final file = File(event.pdfFilePath);

    final Directory appDocumentsDirectory =
        await getApplicationDocumentsDirectory();

    await for (var page in Printing.raster(file.readAsBytesSync(), dpi: 300)) {
      final image = await page.toPng();
      // final filePath = '${appDocumentsDirectory.path}/1.png';
      // final savedFile = await File(filePath).writeAsBytes(image);

      // print(savedFile.path);

      pdfImageList.add(image);
    }

    emitter(PdfCreateSubjectState.screenState(
        pdfFragmentList:
            pdfImageList.map((e) => PdfFragment(image: e)).toList()));
  }

  Future<void> _savePdfSubject(_EventSavePdfSubject event,
      Emitter<PdfCreateSubjectState> emitter) async {
    final subjectId = await subjectRepository.addPdfSubject(
        pdfFile: event.pdfFile,
        title: event.title.isNotEmpty
            ? event.title
            : DateFormat('dd.MM.yyyy : HH:mm').format(DateTime.now()),
        description: event.description,
        date: DateTime.now());
    await subjectRepository.getSubjects();

    for (final pdfFragment in event.pdfFragmentList) {
      late String title;
      if (pdfFragment.title?.isEmpty ?? false) {
        title = 'Слайд';
      } else {
        title = pdfFragment.title!;
      }
      final fragmentId = await fragmentsRepository.addPdfFragment(
        title: title,
        description: pdfFragment.description,
        duration: pdfFragment.duration,
        imagePath: File.fromRawPath(pdfFragment.image).path,
        audioPath: pdfFragment.audioPath,
        date: DateTime.now(),
      );
      await fragmentsRepository.addFragmentToSubject(
          subjectId: subjectId, fragmentId: fragmentId);
    }
  }
}

class PdfFragment {
  final String? title;
  final String? description;
  final Uint8List image;
  final String? audioPath;
  final int? duration;
  PdfFragment(
      {required this.image,
      this.audioPath,
      this.title,
      this.description,
      this.duration});
}
