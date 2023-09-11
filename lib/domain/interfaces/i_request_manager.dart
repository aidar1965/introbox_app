import 'package:moki_tutor/domain/models/record.dart';
import 'package:moki_tutor/domain/models/record_category.dart';

import '../models/course.dart';

abstract class IRequestManager {
  void createRecord(Record record);

  Future<void> updateRecord(
      {required int id,
      required String title,
      String? description,
      String? imagePath,
      required String audioPath});

  Future<void> deleteRecord({
    required int id,
  });

  Future<List<RecordCategory>> getCategories();

  Future<List<Record>> getRecords();

  void addCategory(RecordCategory category);

  Future<void> editCategory(
      {required String name, required RecordCategory category});

  Future<void> deleteCategory(RecordCategory category);

  void saveCourse(Course course);

  Future<void> publishCourse(Course course);

  Future<List<Course>> getCourses();
}
