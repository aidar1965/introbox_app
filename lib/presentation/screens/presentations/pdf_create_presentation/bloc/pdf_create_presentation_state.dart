part of 'pdf_create_presentation_bloc.dart';

@freezed
class PdfCreatePresentationState with _$PdfCreatePresentationState {
  const factory PdfCreatePresentationState.pending() = _StatePending;
  const factory PdfCreatePresentationState.screenState({
    List<PdfFragmentSample>? pdfFragmentList,
    required List<Channel> channels,
    required Channel selectedChanel,
    @Default(false) bool isPending,
    int? countFileGenerated,
    List<PresentationLink>? links,
  }) = _ScreenState;
  const factory PdfCreatePresentationState.savingProcess(
      {required int currentSlide,
      required int totalSlides}) = _StateSavingProcess;
  const factory PdfCreatePresentationState.saveSuccess() = _StateSaveSuccess;
  const factory PdfCreatePresentationState.saveError() = _StateSaveError;
  const factory PdfCreatePresentationState.initialDataNotLoaded() =
      _StateInitialDataNotLoaded;
}
