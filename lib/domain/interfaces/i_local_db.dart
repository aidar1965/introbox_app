import 'package:moki_tutor/domain/models/subject.dart';

import '../models/course.dart';
import '../models/course_category.dart';
import '../models/fragment.dart';
import '../models/fragment_category.dart';
import '../models/subject_category.dart';
import '../models/user.dart';

abstract class ILocalDB {
  Future<ILocalDB> init();

  void addFragment(
      {required String title,
      String? description,
      String? imagePath,
      required int duration,
      required String audioPath,
      required DateTime date,
      String? images,
      List<FragmentCategory>? selectedCategories});

  void updateFragment({required Fragment record});

  void deleteFragment({
    required int id,
  });

  void addSubject(Subject subject);

  void updateSubject(Subject subject);

  List<FragmentCategory> getCategories();

  List<SubjectCategory> getSubjectCategories();

  List<CourseCategory> getCourseCategories();

  List<Fragment> getFragments();

  void addCategory(String name);

  void addSubjectCategory(String name);

  void deleteSubjectCategory(SubjectCategory subjectCategory);

  void editCategory({required FragmentCategory category});

  void editSubjectCategory({required SubjectCategory subjectCategory});

  void deleteCategory(FragmentCategory category);

  void saveCourse(Course course);

  void updateCourse(Course course);

  List<Course> getCourses();

  List<Subject> getSubjects();

  void saveUserLocally(User user);

  User? getLocalUser();

  void removeLocalUser();

  void addCourseCategory(String name);
  void editCourseCategory(String name);
  void deleteCourseCategory(CourseCategory category);
}
