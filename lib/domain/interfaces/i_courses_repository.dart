import '../models/course.dart';

abstract class ICoursesRepository {
  Future<ICoursesRepository> init();
  List<Course> get courses;
  Future<void> getCourses();
  Future<int> addCourse(Course course);
  Future<int> removeCourse(Course course);
  Future<int> editCourse(Course course);
  Future<void> publishCourse(Course course);
  Future<List<Course>?>? getPublishedCourses();

  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
