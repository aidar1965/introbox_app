import 'package:moki_tutor/domain/models/subject_category.dart';

abstract class ISubjectCategoryRepository {
  List<SubjectCategory> get subjectCategories;

  void addSubjectCategory({required SubjectCategory subjectCategory});
  void updateSubjectCategory({required SubjectCategory subjectCategory});
  void deleteSubjectCategory({required SubjectCategory subjectCategory});

  void init();

  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
