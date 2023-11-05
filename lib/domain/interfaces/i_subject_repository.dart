import '../models/fragment.dart';
import '../models/subject.dart';
import '../models/subject_category.dart';

abstract class ISubjectsRepository {
  List<Subject> get subjects;

  Future<int> addSubject({
    required String title,
    String? description,
    List<Fragment>? records,
    required DateTime date,
    List<SubjectCategory>? subjectCategories,
    int? duration,
  });

  Future<int?> addPdfSubject({
    required String pdfFile,
    required String title,
    String? description,
    required DateTime date,
    int? duration,
  });

  Future<void> getSubjects();
  Future<int> updateSubject(Subject subject);

  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
