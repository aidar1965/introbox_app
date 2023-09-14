import 'package:moki_tutor/domain/models/fragment_category.dart';

abstract class ICategoryRepository {
  List<FragmentCategory> get categories;
  void addCategory(String name);
  void editCategory(FragmentCategory category);
  void deleteCategory(FragmentCategory category);

  void init();
  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
