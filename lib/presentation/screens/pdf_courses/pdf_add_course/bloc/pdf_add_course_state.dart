part of 'pdf_add_course_bloc.dart';

@freezed
class PdfAddCourseState with _$PdfAddCourseState {
  const factory PdfAddCourseState.pending() = _StatePending;
  const factory PdfAddCourseState.loadingError() = _StateLoadingError;
  const factory PdfAddCourseState.screenState(
      {required List<Subject> subjects,
      required List<Subject> selectedSubjects}) = _ScreenState;
  const factory PdfAddCourseState.requestError({String? errorText}) =
      _StateRequestError;
}
