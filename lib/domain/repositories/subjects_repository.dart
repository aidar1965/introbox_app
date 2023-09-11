import 'package:flutter/cupertino.dart';
import 'package:moki_tutor/domain/interfaces/i_records_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';
import 'package:moki_tutor/domain/models/subject.dart';

import '../interfaces/i_local_db.dart';

class SubjectsRepository extends ChangeNotifier implements ISubjectsRepository {
  final ILocalDB db;
  final ISubjectCategoryRepository subjectCategoryRepository;
  final IRecordsRepository recordsRepository;

  SubjectsRepository(
      {required this.db,
      required this.subjectCategoryRepository,
      required this.recordsRepository}) {
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
  void addSubject(Subject subject) {
    db.addSubject(subject);
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
