import 'package:moki_tutor/domain/models/record_category.dart';

abstract class ICategoryRepository {
  List<RecordCategory> get categories;
  void addCategory(RecordCategory category);
  void editCategory(RecordCategory category);
  void deleteCategory(RecordCategory category);

  void init();
  void addChangeListener(Function() listener);
  void removeChangeListener(Function() listener);
}
