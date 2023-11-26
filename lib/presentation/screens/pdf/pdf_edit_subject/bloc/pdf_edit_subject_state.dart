part of 'pdf_edit_subject_bloc.dart';

@freezed
class PdfEditSubjectState with _$PdfEditSubjectState {
  const factory PdfEditSubjectState.pending() = _StatePending;
  const factory PdfEditSubjectState.screenState({
    required String title,
    required String description,
    required List<PdfFragment> fragments,
    PdfFragment? selectedFragment,
  }) = _ScreenState;
  const factory PdfEditSubjectState.requestError() = _StateRequestError;
}
