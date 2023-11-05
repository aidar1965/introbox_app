import '../models/fragment.dart';
import '../models/fragment_category.dart';

abstract class IFragmentsRepository {
  Future<void> getFragments();
  Future<int> addFragment(
      {required String title,
      String? description,
      String? imagePath,
      required int? duration,
      List<FragmentCategory>? categories,
      required String? audioPath,
      required DateTime date,
      Map<String, int>? images});

  Future<int?> addPdfFragment({
    required String title,
    String? description,
    String? imagePath,
    int? duration,
    String? audioPath,
    required DateTime date,
  });

  Future<int> updateFragment(Fragment record);

  List<Fragment> get records;

  Future<void> addFragmentToSubject({required subjectId, required fragmentId});

  // ---------------------------------------------------------------------------
  void addChangeListener(Function() listener);

  // ---------------------------------------------------------------------------
  void removeChangeListener(Function() listener);
}
