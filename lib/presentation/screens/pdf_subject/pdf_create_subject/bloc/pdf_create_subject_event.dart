part of 'pdf_create_subject_bloc.dart';

@freezed
class PdfCreateSubjectEvent with _$PdfCreateSubjectEvent {
  const factory PdfCreateSubjectEvent.convertPdf({required Uint8List pdfFile}) =
      _EventConvertFile;
  const factory PdfCreateSubjectEvent.savePdfSubject(
      {required String title,
      required Uint8List pdfFile,
      required String pdfFileName,
      required String description,
      required List<PdfFragmentSample> pdfFragmentList}) = _EventSavePdfSubject;
}
