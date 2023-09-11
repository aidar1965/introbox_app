part of 'courses_bloc.dart';

@freezed
class CoursesEvent with _$CoursesEvent {
  const factory CoursesEvent.initialDataRequested() = _InitialDataRequested;
  const factory CoursesEvent.newCourse() = _NewCourse;
  const factory CoursesEvent.publishCourse(Course course) = _PublishCourse;
  const factory CoursesEvent.selectCourse(Course course) = _SelectCourse;
  const factory CoursesEvent.selectCategory(CourseCategory category) =
      _SelectCategory;
}
