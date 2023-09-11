import 'package:flutter/foundation.dart';
import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/domain/interfaces/i_records_repository.dart';
import 'package:moki_tutor/domain/models/record_category.dart';

import '../models/record.dart';

class RecordsRepository extends ChangeNotifier implements IRecordsRepository {
  final ILocalDB db;
  final ICategoryRepository categoryRepository;

  RecordsRepository({required this.db, required this.categoryRepository}) {
    init();
  }

  List<Record> _records = [];

  void init() {
    getRecords();
    categoryRepository.addChangeListener(() {
      getRecords();
    });
  }

  @override
  void getRecords() {
    _records = db.getRecords();
    notifyListeners();
  }

  @override
  List<Record> get records => _records;

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  void addRecord(Record record) {
    db.createRecord(record);
    getRecords();
  }

  @override
  void updateRecord(Record record) {
    db.updateRecord(record: record);
    _records = db.getRecords();
    notifyListeners();
  }
}
