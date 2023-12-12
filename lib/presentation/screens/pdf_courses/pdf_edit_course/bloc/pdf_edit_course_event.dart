part of 'pdf_edit_course_bloc.dart';

@freezed
class PdfEditCourseEvent with _$PdfEditCourseEvent {
  const factory PdfEditCourseEvent.dataRequested() = _EventDataRequested;
  const factory PdfEditCourseEvent.subjectSelected({required Subject subject}) =
      _EventSubjectSelected;
  const factory PdfEditCourseEvent.subjectUnSelected(
      {required Subject subject}) = _EventSubjectUnSelected;
  const factory PdfEditCourseEvent.onReorderSubjects(
      {required List<Subject> selectedSubjects}) = _EventReorderSubject;
  const factory PdfEditCourseEvent.onSaveCourseClicked(
      {required String title,
      required String description}) = _EventOnSaveCourseClicked;
}
