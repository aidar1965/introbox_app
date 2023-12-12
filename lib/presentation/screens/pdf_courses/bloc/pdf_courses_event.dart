part of 'pdf_courses_bloc.dart';

@freezed
class PdfCoursesEvent with _$PdfCoursesEvent {
  const factory PdfCoursesEvent.dataRequested() = _EventDataRequested;
  const factory PdfCoursesEvent.courseDetailsClicked({
    required int courseId,
  }) = _EventCourseDetailsClicked;
  const factory PdfCoursesEvent.editCourseClicked({
    required int courseId,
  }) = _EvenEditCourseClicked;

  const factory PdfCoursesEvent.reloadPage() = _EventReloadPage;
  const factory PdfCoursesEvent.publishCourse({required Course course}) =
      _EventPublishCourse;
  const factory PdfCoursesEvent.deleteCourse({required Course course}) =
      _EventDeleteCourse;
}
