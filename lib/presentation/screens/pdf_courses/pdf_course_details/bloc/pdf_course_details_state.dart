part of 'pdf_course_details_bloc.dart';

@freezed
class PdfCourseDetailsState with _$PdfCourseDetailsState {
  const factory PdfCourseDetailsState.pending() = _StatePending;
  const factory PdfCourseDetailsState.screenState(
      {required List<Subject> subjects}) = _ScreenState;
  const factory PdfCourseDetailsState.loadingError() = _StateLoadingError;
}
