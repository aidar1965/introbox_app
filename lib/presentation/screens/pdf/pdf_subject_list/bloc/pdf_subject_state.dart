part of 'pdf_subject_bloc.dart';

@freezed
class PdfSubjectState with _$PdfSubjectState {
  const factory PdfSubjectState.pending() = _StatePending;
  const factory PdfSubjectState.screenState({required List<Subject> subjects}) =
      _ScreenState;
}
