import 'package:flutter/cupertino.dart';
import 'package:moki_tutor/domain/interfaces/i_fragments_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';
import 'package:moki_tutor/domain/models/subject.dart';

import '../../data/api/models/requests/fragment_request_data.dart';
import '../interfaces/i_api.dart';
import '../interfaces/i_local_db.dart';
import '../locator/locator.dart';
import '../models/fragment.dart';
import '../models/responses/paginated_subjects.dart';
import '../models/subject_category.dart';

class SubjectsRepository extends ChangeNotifier implements ISubjectsRepository {
  SubjectsRepository(
    this.db,
  ) {
    // init();
  }

  // {
  //   recordsRepository.addChangeListener(() {
  //     init();
  //   });
  //   subjectCategoryRepository.addChangeListener(() {
  //     init();
  //   });
  // }

  final ILocalDB db;
  final api = getIt<IApi>();
  final ISubjectCategoryRepository subjectCategoryRepository =
      getIt<ISubjectCategoryRepository>();
  final IFragmentsRepository recordsRepository = getIt<IFragmentsRepository>();

  List<Subject> _subjects = [];
  late PaginatedSubjects _paginatedSubjects;

  @override
  List<Subject> get subjects => _subjects;

  void init() async {
    await getSubjects();
    notifyListeners();
  }

  @override
  Future<void> getSubjects() async {
    //   _subjects = await db.getSubjects();
    _paginatedSubjects = await api.getSubjects();
    _subjects = _paginatedSubjects.subjects.toList();
    notifyListeners();
  }

  @override
  Future<int> addSubject({
    required String title,
    String? description,
    List<Fragment>? records,
    required DateTime date,
    List<SubjectCategory>? subjectCategories,
    int? duration,
  }) async {
    final id = await db.addSubject(
        title: title,
        date: date,
        records: records,
        subjectCategories: subjectCategories,
        duration: duration);
    init();
    return id;
  }

  @override
  Future<int> updateSubject(Subject subject) async {
    final id = await db.updateSubject(subject);
    init();
    return id;
  }

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  Future<int?> addPdfSubject(
      {required String pdfFile,
      required String title,
      String? description,
      required List<FragmentRequestData> fragments,
      int? duration}) async {
    await api.addPdfSubject(
        pdfFile: pdfFile,
        title: title,
        description: description,
        fragments: fragments);
    // final id = await db.addPdfSubject(
    //     title: title,
    //     pdfFile: pdfFile,
    //     date: date,
    //     description: description,
    //     duration: duration);
    // return id;
    return 1; // TODO
  }

  @override
  Future<void> deleteSubject(int id) async {
    await api.deleteSubject(id: id);
    await getSubjects();
  }
}
