import 'package:flutter/foundation.dart';
import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/domain/models/fragment_category.dart';
import 'package:nanoid/nanoid.dart';

import '../locator/locator.dart';

class CategoriesRepository extends ChangeNotifier
    implements ICategoryRepository {
  CategoriesRepository(this.db) {
    init();
  }
  List<FragmentCategory>? _categories;

  final ILocalDB db;

  @override
  void addCategory(String name) {
    db.addCategory(name);
    getCategories();
  }

  @override
  List<FragmentCategory> get categories => _categories ?? [];

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  void init() {
    getCategories();
    notifyListeners();
  }

  void getCategories() {
    _categories = db.getCategories();
    if (_categories == null) {
      var nanoId = nanoid(12);
      db.addCategory('Default category');
      _categories = db.getCategories();
    } else if (_categories!.isEmpty) {
      var nanoId = nanoid(12);
      db.addCategory(
        'Default category',
      );
      _categories = db.getCategories();
    }
    notifyListeners();
  }

  @override
  void editCategory(FragmentCategory category) {
    db.editCategory(category: category);
    getCategories();
  }

  @override
  void deleteCategory(FragmentCategory category) {
    db.deleteCategory(category);
    getCategories();
  }
}
