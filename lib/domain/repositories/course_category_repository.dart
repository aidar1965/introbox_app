import 'package:flutter/foundation.dart';
import 'package:moki_tutor/domain/interfaces/i_course_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/domain/models/course_category.dart';
import 'package:nanoid/nanoid.dart';

class CourseCategoryRepository extends ChangeNotifier
    implements ICourseCategoryRepository {
  final ILocalDB db;

  CourseCategoryRepository({required this.db}) {
    init();
  }

  List<CourseCategory>? _courseCategories;

  @override
  void addCategory(CourseCategory category) {
    db.addCourseCategory(category);
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
      var nanoId = nanoid(12);
      db.addCourseCategory(
          CourseCategory(name: 'Default category', id: nanoId));
      _courseCategories = db.getCourseCategories();
    } else if (_courseCategories!.isEmpty) {
      var nanoId = nanoid(12);
      db.addCourseCategory(
          CourseCategory(name: 'Default category', id: nanoId));
      _courseCategories = db.getCourseCategories();
    }
  }
}
