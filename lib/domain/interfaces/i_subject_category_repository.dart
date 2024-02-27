import 'package:introbox/domain/models/subject_category.dart';

abstract class ISubjectCategoryRepository {
  List<SubjectCategory> get subjectCategories;

  Future<int> addSubjectCategory({required String name});
  Future<int> updateSubjectCategory({required SubjectCategory subjectCategory});
  Future<int> deleteSubjectCategory({required SubjectCategory subjectCategory});

  Future<ISubjectCategoryRepository> init();

  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
