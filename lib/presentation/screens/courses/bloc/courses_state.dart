part of 'courses_bloc.dart';

@freezed
class CoursesState with _$CoursesState {
  const factory CoursesState.pending() = _Pending;
  const factory CoursesState.initialDataReceived(
      {required List<Course> courses,
      required List<CourseCategory> categories,
      required List<CourseCategory> selectedCategories,
      Course? selectedCourse,
      required bool isAuthorized,
      required List<Course> publishedCourses}) = _InitialDataReceived;
  const factory CoursesState.newCourse() = _NewCoursePage;
}
