part of 'pdf_create_subject_bloc.dart';

@freezed
class PdfCreateSubjectState with _$PdfCreateSubjectState {
  const factory PdfCreateSubjectState.screenState(
      {List<PdfFragmentSample>? pdfFragmentList,
      @Default(false) bool isPending}) = _ScreenState;
  const factory PdfCreateSubjectState.saveSuccess() = _StateSaveSuccess;
  const factory PdfCreateSubjectState.saveError() = _StateSaveError;
}
