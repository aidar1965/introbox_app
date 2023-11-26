import '../../data/api/models/requests/fragment_request_data.dart';
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
    required List<FragmentRequestData> fragments,
    int? duration,
  });

  Future<void> getSubjects();
  Future<int> updateSubject(Subject subject);

  Future<void> deleteSubject(int id);

  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
