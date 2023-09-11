import 'package:flutter/cupertino.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
import 'package:moki_tutor/domain/models/subject_category.dart';
import 'package:nanoid/nanoid.dart';

class SubjectCategoryRepository extends ChangeNotifier
    implements ISubjectCategoryRepository {
  final ILocalDB db;

  List<SubjectCategory> _subjectCategories = [];

  SubjectCategoryRepository(this.db) {
    init();
  }

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void addSubjectCategory({required SubjectCategory subjectCategory}) {
    db.addSubjectCategory(subjectCategory);
    _subjectCategories = db.getSubjectCategories();
    notifyListeners();
  }

  @override
  void deleteSubjectCategory({required SubjectCategory subjectCategory}) {
    db.deleteSubjectCategory(subjectCategory);
    _subjectCategories = db.getSubjectCategories();
    notifyListeners();
  }

  @override
  void init() {
    _subjectCategories = db.getSubjectCategories();
    if (_subjectCategories.isEmpty) {
      var nanoId = nanoid(12);
      db.addSubjectCategory(
          SubjectCategory(name: 'Default subject category', id: nanoid()));
      _subjectCategories = db.getSubjectCategories();
    }
    notifyListeners();
  }

  @override
  void removeChangeListener(Function() listener) {
    removeListener(listener);
  }

  @override
  List<SubjectCategory> get subjectCategories => _subjectCategories;

  @override
  void updateSubjectCategory({required SubjectCategory subjectCategory}) {
    db.editSubjectCategory(subjectCategory: subjectCategory);
    _subjectCategories = db.getSubjectCategories();
    notifyListeners();
  }
}
