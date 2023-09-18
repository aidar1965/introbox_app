import '../models/fragment.dart';
import '../models/subject.dart';
import '../models/subject_category.dart';

abstract class ISubjectsRepository {
  List<Subject> get subjects;

  void addSubject({
    required String title,
    String? description,
    List<Fragment>? records,
    required DateTime date,
    List<SubjectCategory>? subjectCategories,
    int? duration,
  });
  void getSubject();
  void updateSubject(Subject subject);

  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
