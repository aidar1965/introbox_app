import '../models/fragment.dart';
import '../models/fragment_category.dart';

abstract class IFragmentsRepository {
  void getFragments();
  void addFragment(
      {required String title,
      String? description,
      String? imagePath,
      required int duration,
      List<FragmentCategory>? categories,
      required String audioPath,
      required DateTime date,
      Map<String, int>? images});
  void updateFragment(Fragment record);

  List<Fragment> get records;

  // ---------------------------------------------------------------------------
  void addChangeListener(Function() listener);

  // ---------------------------------------------------------------------------
  void removeChangeListener(Function() listener);
}
