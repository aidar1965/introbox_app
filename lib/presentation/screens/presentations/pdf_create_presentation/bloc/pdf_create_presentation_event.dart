part of 'pdf_create_presentation_bloc.dart';

@freezed
class PdfCreatePresentationEvent with _$PdfCreatePresentationEvent {
  const factory PdfCreatePresentationEvent.convertPdf(
      {required Uint8List pdfFile}) = _EventConvertFile;
  const factory PdfCreatePresentationEvent.savePdfPresentation(
          {required String title,
          required Uint8List pdfFile,
          required String pdfFileName,
          required String description,
          required bool isAudio,
          required List<PdfFragmentSample> pdfFragmentList}) =
      _EventSavePdfPresentation;
}
