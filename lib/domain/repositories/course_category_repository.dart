import 'package:flutter/foundation.dart';
import 'package:moki_tutor/domain/interfaces/i_course_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/domain/models/course_category.dart';
import 'package:nanoid/nanoid.dart';

import '../locator/locator.dart';

class CourseCategoryRepository extends ChangeNotifier
    implements ICourseCategoryRepository {
  CourseCategoryRepository(this.db) {
    init();
  }
  final ILocalDB db;

  List<CourseCategory>? _courseCategories;

  @override
  void addCategory(String name) {
    db.addCourseCategory(name);
    getCategories();
    notifyListeners();
  }

  @override
  void addChangeListener(Function() listener) => addListener(listener);
  @override
  List<CourseCategory> get categories => _courseCategories ?? [];

  @override
  void deleteCategory(CourseCategory category) {
    db.deleteCourseCategory(category);
    getCategories();
    notifyListeners();
  }

  @override
  void editCategory(CourseCategory category) {
    db.deleteCourseCategory(category);
    getCategories();
    notifyListeners();
  }

  @override
  void init() {
    getCategories();
    notifyListeners();
  }

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  void getCategories() {
    _courseCategories = db.getCourseCategories();
    if (_courseCategories == null) {
      db.addCourseCategory('Default category');
      _courseCategories = db.getCourseCategories();
    } else if (_courseCategories!.isEmpty) {
      db.addCourseCategory(
        'Default category',
      );
      _courseCategories = db.getCourseCategories();
    }
  }
}
