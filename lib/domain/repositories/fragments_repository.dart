import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import '../interfaces/i_category_repository.dart';
import '../interfaces/i_local_db.dart';
import '../interfaces/i_fragments_repository.dart';

import '../locator/locator.dart';
import '../models/fragment.dart';
import '../models/fragment_category.dart';

class FragmentsRepository extends ChangeNotifier
    implements IFragmentsRepository {
  final ILocalDB db;
  final ICategoryRepository categoryRepository = getIt<ICategoryRepository>();

  FragmentsRepository(this.db) {
    init();
  }

  List<Fragment> _records = [];

  void init() {
    getFragments();
    categoryRepository.addChangeListener(() {
      getFragments();
    });
  }

  @override
  void getFragments() {
    _records = db.getFragments();
    notifyListeners();
  }

  @override
  List<Fragment> get records => _records;

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  void addFragment(
      {required String title,
      String? description,
      String? imagePath,
      required int duration,
      required String audioPath,
      List<FragmentCategory>? categories,
      required DateTime date,
      Map<String, int>? images}) {
    db.addFragment(
        title: title,
        description: description,
        imagePath: imagePath,
        duration: duration,
        audioPath: audioPath,
        date: date,
        images: jsonEncode(
            images?.keys.map((e) => {basename(e): images[e]}).toList()));
    getFragments();
  }

  @override
  void updateFragment(Fragment record) {
    db.updateFragment(record: record);
    _records = db.getFragments();
    notifyListeners();
  }
}
