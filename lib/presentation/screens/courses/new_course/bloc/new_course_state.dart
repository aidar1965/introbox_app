part of 'new_course_bloc.dart';

@freezed
class NewCourseState with _$NewCourseState {
  const factory NewCourseState.pending() = _Pending;
  const factory NewCourseState.dataReceived({
    required List<CourseCategory> courseCategories,
    required List<CourseCategory> selectedCourseCategories,
    required List<Subject> subjects,
    required List<SubjectCategory> subjectCategories,
    required List<SubjectCategory> selectedSubjectCategories,
    required List<Subject> courseSubjects,
    required TextEditingController titleController,
    required TextEditingController descriptionController,
  }) = _DataReceived;
  const factory NewCourseState.courseSaved() = _CourseSaved;
}
