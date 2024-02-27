import 'package:introbox/domain/models/fragment_category.dart';

abstract class ICategoryRepository {
  List<FragmentCategory> get categories;
  Future<int> addCategory(String name);
  Future<int> editCategory(FragmentCategory category);
  Future<int> deleteCategory(FragmentCategory category);

  void init();
  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
