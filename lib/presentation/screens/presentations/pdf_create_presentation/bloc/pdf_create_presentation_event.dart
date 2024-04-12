part of 'pdf_create_presentation_bloc.dart';

@freezed
class PdfCreatePresentationEvent with _$PdfCreatePresentationEvent {
  const factory PdfCreatePresentationEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory PdfCreatePresentationEvent.channelSelected(
      {required Channel channel}) = _EventChannelSelected;
  const factory PdfCreatePresentationEvent.convertPdf(
      {required Uint8List pdfFile}) = _EventConvertFile;
  const factory PdfCreatePresentationEvent.addLink(
      {required PresentationLink link}) = _EventAddLink;
  const factory PdfCreatePresentationEvent.deleteLink(int index) =
      _EventDeleteLink;
  const factory PdfCreatePresentationEvent.savePdfPresentation(
          {required String title,
          required Uint8List pdfFile,
          required String pdfFileName,
          required String description,
          required bool isAudio,
          required List<PdfFragmentSample> pdfFragmentList}) =
      _EventSavePdfPresentation;
}
