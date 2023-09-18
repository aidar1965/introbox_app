import 'package:flutter/cupertino.dart';
import 'package:moki_tutor/domain/interfaces/i_fragments_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';
import 'package:moki_tutor/domain/models/subject.dart';

import '../interfaces/i_local_db.dart';
import '../locator/locator.dart';
import '../models/fragment.dart';
import '../models/subject_category.dart';

class SubjectsRepository extends ChangeNotifier implements ISubjectsRepository {
  final ILocalDB db;
  final ISubjectCategoryRepository subjectCategoryRepository =
      getIt<ISubjectCategoryRepository>();
  final IFragmentsRepository recordsRepository = getIt<IFragmentsRepository>();

  SubjectsRepository(
    this.db,
  ) {
    init();
    recordsRepository.addChangeListener(() {
      init();
    });
    subjectCategoryRepository.addChangeListener(() {
      init();
    });
  }

  void init() {
    getSubject();
    notifyListeners();
  }

  List<Subject> _subjects = [];

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void addSubject({
    required String title,
    String? description,
    List<Fragment>? records,
    required DateTime date,
    List<SubjectCategory>? subjectCategories,
    int? duration,
  }) {
    db.addSubject(
        title: title,
        date: date,
        records: records,
        subjectCategories: subjectCategories,
        duration: duration);
    init();
  }

  @override
  void updateSubject(Subject subject) {
    db.updateSubject(subject);
    init();
  }

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  List<Subject> get subjects => _subjects;

  @override
  void getSubject() {
    _subjects = db.getSubjects();
  }
}
