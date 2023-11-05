import '../models/course_category.dart';

abstract class ICourseCategoryRepository {
  List<CourseCategory> get categories;

  Future<int> addCategory(String name);
  Future<int> editCategory(CourseCategory category);
  Future<int> deleteCategory(CourseCategory category);
  void getCategories();

  void init();
  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
