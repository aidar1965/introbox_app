part of 'new_course_bloc.dart';

@freezed
class NewCourseEvent with _$NewCourseEvent {
  const factory NewCourseEvent.dataRequested() = _DataRequested;
  const factory NewCourseEvent.resendData() = _ResendData;
  const factory NewCourseEvent.addCourseCategory({required String name}) =
      _AddCourseCategory;
  const factory NewCourseEvent.selectCourseCategory(
      CourseCategory courseCategory) = _SelectCourseCategory;
  const factory NewCourseEvent.selectSubjectCategory(
      SubjectCategory subjectCategory) = _SelectSubjectCategory;
  const factory NewCourseEvent.selectCourseSubject(Subject subject) =
      _SelectCourseSubject;
  const factory NewCourseEvent.onReorder(int oldIndex, int newIndex) =
      _OnReorder;
  const factory NewCourseEvent.saveCourse() = _SaveCourse;
}
