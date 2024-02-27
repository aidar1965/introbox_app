import 'package:flutter/foundation.dart';
import 'package:introbox/domain/interfaces/i_course_category_repository.dart';
import 'package:introbox/domain/interfaces/i_local_db.dart';
import 'package:introbox/domain/models/course_category.dart';

class CourseCategoryRepository extends ChangeNotifier
    implements ICourseCategoryRepository {
  CourseCategoryRepository(this.db) {
    init();
  }
  final ILocalDB db;

  List<CourseCategory>? _courseCategories;

  @override
  Future<int> addCategory(String name) async {
    final id = await db.addCourseCategory(name);
    await getCategories();
    notifyListeners();
    return id;
  }

  @override
  void addChangeListener(Function() listener) => addListener(listener);
  @override
  List<CourseCategory> get categories => _courseCategories ?? [];

  @override
  Future<int> deleteCategory(CourseCategory category) async {
    final id = await db.deleteCourseCategory(category);
    getCategories();
    notifyListeners();
    return id;
  }

  @override
  Future<int> editCategory(CourseCategory category) async {
    final id = await db.deleteCourseCategory(category);
    getCategories();
    notifyListeners();
    return id;
  }

  @override
  void init() async {
    await getCategories();
    notifyListeners();
  }

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  Future<void> getCategories() async {
    _courseCategories = await db.getCourseCategories();
    if (_courseCategories == null) {
      await db.addCourseCategory('Default category');
      _courseCategories = await db.getCourseCategories();
    } else if (_courseCategories!.isEmpty) {
      await db.addCourseCategory(
        'Default category',
      );
      _courseCategories = await db.getCourseCategories();
    }
  }
}
