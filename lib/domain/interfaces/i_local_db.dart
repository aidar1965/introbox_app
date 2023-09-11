import 'package:moki_tutor/domain/models/subject.dart';

import '../models/course.dart';
import '../models/course_category.dart';
import '../models/record.dart';
import '../models/record_category.dart';
import '../models/subject_category.dart';
import '../models/user.dart';

abstract class ILocalDB {
  Future<void> init();

  void createRecord(Record record);

  void updateRecord({required Record record});

  void deleteRecord({
    required int id,
  });

  void addSubject(Subject subject);

  void updateSubject(Subject subject);

  List<RecordCategory> getCategories();

  List<SubjectCategory> getSubjectCategories();

  List<CourseCategory> getCourseCategories();

  List<Record> getRecords();

  void addCategory(RecordCategory category);

  void addSubjectCategory(SubjectCategory subjectCategory);

  void deleteSubjectCategory(SubjectCategory subjectCategory);

  void editCategory({required RecordCategory category});

  void editSubjectCategory({required SubjectCategory subjectCategory});

  void deleteCategory(RecordCategory category);

  void saveCourse(Course course);

  void updateCourse(Course course);

  List<Course> getCourses();

  List<Subject> getSubjects();

  void saveUserLocally(User user);

  User? getLocalUser();

  void removeLocalUser();

  void addCourseCategory(CourseCategory category);
  void editCourseCategory(CourseCategory category);
  void deleteCourseCategory(CourseCategory category);
}
