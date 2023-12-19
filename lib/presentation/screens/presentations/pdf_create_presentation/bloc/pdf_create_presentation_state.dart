part of 'pdf_create_presentation_bloc.dart';

@freezed
class PdfCreatePresentationState with _$PdfCreatePresentationState {
  const factory PdfCreatePresentationState.screenState(
      {List<PdfFragmentSample>? pdfFragmentList,
      @Default(false) bool isPending}) = _ScreenState;
  const factory PdfCreatePresentationState.saveSuccess() = _StateSaveSuccess;
  const factory PdfCreatePresentationState.saveError() = _StateSaveError;
}
