import 'package:moki_tutor/domain/models/fragment.dart';
import 'package:moki_tutor/domain/models/fragment_category.dart';

import '../models/course.dart';

abstract class IRequestManager {
  void createFragment(Fragment record);

  Future<void> updateFragment(
      {required int id,
      required String title,
      String? description,
      String? imagePath,
      required String audioPath});

  Future<void> deleteFragment({
    required int id,
  });

  Future<List<FragmentCategory>> getCategories();

  Future<List<Fragment>> getFragments();

  void addCategory(FragmentCategory category);

  Future<void> editCategory(
      {required String name, required FragmentCategory category});

  Future<void> deleteCategory(FragmentCategory category);

  void saveCourse(Course course);

  Future<void> publishCourse(Course course);

  Future<List<Course>> getCourses();
}
