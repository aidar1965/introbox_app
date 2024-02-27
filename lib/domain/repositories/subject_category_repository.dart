import 'package:flutter/cupertino.dart';
import 'package:introbox/domain/interfaces/i_local_db.dart';
import 'package:introbox/domain/interfaces/i_subject_category_repository.dart';
import 'package:introbox/domain/models/subject_category.dart';

class SubjectCategoryRepository extends ChangeNotifier
    implements ISubjectCategoryRepository {
  final ILocalDB db;

  List<SubjectCategory> _subjectCategories = [];

  SubjectCategoryRepository(this.db);

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  Future<int> addSubjectCategory({required String name}) async {
    final id = await db.addSubjectCategory(name);
    _subjectCategories = await db.getSubjectCategories();
    notifyListeners();
    return id;
  }

  @override
  Future<int> deleteSubjectCategory(
      {required SubjectCategory subjectCategory}) async {
    final id = await db.deleteSubjectCategory(subjectCategory);
    _subjectCategories = await db.getSubjectCategories();
    notifyListeners();
    return id;
  }

  @override
  Future<SubjectCategoryRepository> init() async {
    _subjectCategories = await db.getSubjectCategories();
    if (_subjectCategories.isEmpty) {
      await db.addSubjectCategory('Default subject category');
      _subjectCategories = await db.getSubjectCategories();
    }
    notifyListeners();
    return this;
  }

  @override
  void removeChangeListener(Function() listener) {
    removeListener(listener);
  }

  @override
  List<SubjectCategory> get subjectCategories => _subjectCategories;

  @override
  Future<int> updateSubjectCategory(
      {required SubjectCategory subjectCategory}) async {
    final id = await db.editSubjectCategory(subjectCategory: subjectCategory);
    _subjectCategories = await db.getSubjectCategories();
    notifyListeners();
    return id;
  }
}
