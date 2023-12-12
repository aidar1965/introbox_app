part of 'pdf_edit_course_bloc.dart';

@freezed
class PdfEditCourseState with _$PdfEditCourseState {
  const factory PdfEditCourseState.screenState(
      {required List<Subject> subjects,
      required List<Subject> selectedSubjects,
      @Default(false) bool isLoadingSubjects,
      @Default(false) bool isLoadingError}) = _ScreenState;

  const factory PdfEditCourseState.requestError({String? errorText}) =
      _StateRequestError;
  const factory PdfEditCourseState.saveSuccess() = _StateRequestSuccess;
}
