import 'package:flutter/foundation.dart';
import 'package:introbox/domain/interfaces/i_category_repository.dart';
import 'package:introbox/domain/interfaces/i_local_db.dart';
import 'package:introbox/domain/models/fragment_category.dart';

class CategoriesRepository extends ChangeNotifier
    implements ICategoryRepository {
  CategoriesRepository(this.db) {
    init();
  }
  List<FragmentCategory>? _categories;

  final ILocalDB db;

  @override
  Future<int> addCategory(String name) async {
    final id = await db.addCategory(name);
    getCategories();
    return id;
  }

  @override
  List<FragmentCategory> get categories => _categories ?? [];

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  void init() async {
    await getCategories();
    notifyListeners();
  }

  Future<void> getCategories() async {
    _categories = await db.getCategories();
    if (_categories == null) {
      await db.addCategory('Default category');
      _categories = await db.getCategories();
    } else if (_categories!.isEmpty) {
      db.addCategory(
        'Default category',
      );
      _categories = await db.getCategories();
    }
    notifyListeners();
  }

  @override
  Future<int> editCategory(FragmentCategory category) async {
    final id = await db.editCategory(category: category);
    getCategories();
    return id;
  }

  @override
  Future<int> deleteCategory(FragmentCategory category) async {
    final id = await db.deleteCategory(category);
    getCategories();
    return id;
  }
}
