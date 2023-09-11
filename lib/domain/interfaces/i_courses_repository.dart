import '../models/course.dart';

abstract class ICoursesRepository {
  void init();
  List<Course> get courses;
  void getCourses();
  void addCourse(Course course);
  void removeCourse(Course course);
  void editCourse(Course course);
  Future<void> publishCourse(Course course);
  Future<List<Course>?>? getPublishedCourses();

  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
