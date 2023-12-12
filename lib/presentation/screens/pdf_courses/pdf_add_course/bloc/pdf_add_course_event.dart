part of 'pdf_add_course_bloc.dart';

@freezed
class PdfAddCourseEvent with _$PdfAddCourseEvent {
  const factory PdfAddCourseEvent.dataRequested() = _EventDataRequested;
  const factory PdfAddCourseEvent.subjectSelected({required Subject subject}) =
      _EventSubjectSelected;
  const factory PdfAddCourseEvent.subjectUnSelected(
      {required Subject subject}) = _EventSubjectUnSelected;
  const factory PdfAddCourseEvent.onReorderSubjects(
      {required List<Subject> selectedSubjects}) = _EventReorderSubject;
  const factory PdfAddCourseEvent.onSaveCourseClicked(
      {required String title,
      required String description}) = _EventOnSaveCourseClicked;
}
