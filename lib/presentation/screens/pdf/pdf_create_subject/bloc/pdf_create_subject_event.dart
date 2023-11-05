part of 'pdf_create_subject_bloc.dart';

@freezed
class PdfCreateSubjectEvent with _$PdfCreateSubjectEvent {
  const factory PdfCreateSubjectEvent.convertPdf(
      {required String pdfFilePath}) = _EventConvertFile;
  const factory PdfCreateSubjectEvent.savePdfSubject(
      {required String title,
      required String pdfFile,
      String? description,
      required List<PdfFragment> pdfFragmentList}) = _EventSavePdfSubject;
}
