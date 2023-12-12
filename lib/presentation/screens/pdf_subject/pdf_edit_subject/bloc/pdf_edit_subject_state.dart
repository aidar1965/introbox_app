part of 'pdf_edit_subject_bloc.dart';

@freezed
class PdfEditSubjectState with _$PdfEditSubjectState {
  const factory PdfEditSubjectState.pending() = _StatePending;
  const factory PdfEditSubjectState.screenState({
    required String title,
    required String description,
    required List<PdfFragment> fragments,
    PdfFragment? selectedFragment,
    @Default(false) bool subjectUpdatePending,
    @Default(false) bool fragmentUpdatePending,
    @Default(false) bool deleteFragmentPending,
  }) = _ScreenState;
  const factory PdfEditSubjectState.requestError({String? errorText}) =
      _StateRequestError;
  const factory PdfEditSubjectState.loadingError({String? errorText}) =
      _StateLoadingError;
}
