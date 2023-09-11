import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/domain/interfaces/i_records_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_request_manager.dart';

import '../domain/models/course.dart';
import '../domain/models/record.dart';
import '../domain/models/record_category.dart';

class RequestManager implements IRequestManager {
  RequestManager({
    required this.api,
    required this.db,
    required this.categoryRepository,
  });
  final ILocalDB db;
  final IApi api;
  final ICategoryRepository categoryRepository;

  @override
  void createRecord(Record record) {
    db.createRecord(record);
  }

  @override
  Future<void> updateRecord(
      {required int id,
      required String title,
      String? description,
      String? imagePath,
      required String audioPath}) async {}

  @override
  Future<void> deleteRecord({
    required int id,
  }) async {}

  @override
  Future<List<RecordCategory>> getCategories() async {
    List<RecordCategory> categories = await db.getCategories();
    return categories;
  }

  @override
  Future<List<Record>> getRecords() async {
    List<Record> records = await db.getRecords();
    return records;
  }

  @override
  void addCategory(RecordCategory category) {
    db.addCategory(category);
  }

  @override
  Future<void> editCategory(
      {required String name, required RecordCategory category}) async {}

  @override
  Future<void> deleteCategory(RecordCategory category) async {}

  @override
  void saveCourse(Course course) {
    db.saveCourse(course);
  }

  @override
  Future<void> publishCourse(Course course) async {
    await api.publishCourse(course: course);
  }

  @override
  Future<List<Course>> getCourses() async {
    List<Course> courses = await db.getCourses();
    return courses;
  }
}
