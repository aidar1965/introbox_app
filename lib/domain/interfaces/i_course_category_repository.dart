import '../models/course_category.dart';

abstract class ICourseCategoryRepository {
  List<CourseCategory> get categories;

  void addCategory(String name);
  void editCategory(CourseCategory category);
  void deleteCategory(CourseCategory category);
  void getCategories();

  void init();
  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
