part of 'pdf_courses_bloc.dart';

@freezed
class PdfCoursesState with _$PdfCoursesState {
  const factory PdfCoursesState.pending() = _StatePending;
  const factory PdfCoursesState.loadingError() = _StateLoadingError;
  const factory PdfCoursesState.screenState({
    required List<Course> courses,
  }) = _ScreenState;
  const factory PdfCoursesState.requestError({
    String? errorText,
  }) = _StateRequestError;
}
