part of 'pdf_create_presentation_bloc.dart';

@freezed
class PdfCreatePresentationEvent with _$PdfCreatePresentationEvent {
  const factory PdfCreatePresentationEvent.convertPdf(
      {required String pdfFilePath}) = _EventConvertFile;
  const factory PdfCreatePresentationEvent.savePdfPresentation(
          {required String title,
          required String pdfFile,
          required String description,
          required bool isAudio,
          required List<PdfFragmentSample> pdfFragmentList}) =
      _EventSavePdfPresentation;
}
