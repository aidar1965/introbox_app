import 'package:introbox/domain/models/subject.dart';

import '../models/course.dart';
import '../models/course_category.dart';
import '../models/fragment.dart';
import '../models/fragment_category.dart';
import '../models/subject_category.dart';
import '../models/user.dart';

abstract class ILocalDB {
  Future<ILocalDB> init();

  Future<int> addFragment(
      {required String title,
      String? description,
      String? imagePath,
      required int? duration,
      required String? audioPath,
      required DateTime date,
      String? images,
      List<FragmentCategory>? selectedCategories});

  Future<int?> addPdfFragment({
    required String title,
    String? description,
    String? imagePath,
    int? duration,
    String? audioPath,
    required DateTime date,
  });

  Future<int> updateFragment({required Fragment record});

  Future<int> deleteFragment({
    required int id,
  });

  Future<int> addSubject({
    required String title,
    String? description,
    List<Fragment>? records,
    required DateTime date,
    List<SubjectCategory>? subjectCategories,
    int? duration,
  });

  Future<int?> addPdfSubject({
    required String title,
    String? description,
    required String pdfFile,
    required DateTime date,
    int? duration,
  });

  Future<int> updateSubject(Subject subject);

  Future<List<FragmentCategory>> getCategories();

  Future<List<SubjectCategory>> getSubjectCategories();

  Future<List<CourseCategory>> getCourseCategories();

  Future<List<Fragment>> getFragments();

  Future<int> addCategory(String name);

  Future<int> addSubjectCategory(String name);

  Future<int> deleteSubjectCategory(SubjectCategory subjectCategory);

  Future<int> editCategory({required FragmentCategory category});

  Future<int> editSubjectCategory({required SubjectCategory subjectCategory});

  Future<int> deleteCategory(FragmentCategory category);

  Future<int> saveCourse(Course course);

  Future<int> updateCourse(Course course);

  Future<List<Course>> getCourses();

  Future<List<Subject>> getSubjects();

  Future<int> saveUserLocally(User user);

  Future<void> addFragmentToSubject({required subjectId, required fragmentId});

  User? getLocalUser();

  void removeLocalUser();

  Future<int> addCourseCategory(String name);
  Future<int> editCourseCategory(String name);
  Future<int> deleteCourseCategory(CourseCategory category);
}
