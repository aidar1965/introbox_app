import 'package:flutter/foundation.dart';
import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/domain/models/record_category.dart';
import 'package:nanoid/nanoid.dart';

class CategoriesRepository extends ChangeNotifier
    implements ICategoryRepository {
  List<RecordCategory>? _categories;

  final ILocalDB db;

  CategoriesRepository(this.db) {
    init();
  }

  @override
  void addCategory(RecordCategory category) {
    db.addCategory(category);
    getCategories();
  }

  @override
  List<RecordCategory> get categories => _categories ?? [];

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  void init() {
    getCategories();
    notifyListeners();
  }

  void getCategories() async {
    _categories = db.getCategories();
    if (_categories == null) {
      var nanoId = nanoid(12);
      db.addCategory(RecordCategory(name: 'Default category', id: nanoId));
      _categories = db.getCategories();
    } else if (_categories!.isEmpty) {
      var nanoId = await nanoid(12);
      db.addCategory(RecordCategory(name: 'Default category', id: nanoId));
      _categories = db.getCategories();
    }
    notifyListeners();
  }

  @override
  void editCategory(RecordCategory category) {
    db.editCategory(category: category);
    getCategories();
  }

  @override
  void deleteCategory(RecordCategory category) {
    db.deleteCategory(category);
    getCategories();
  }
}
