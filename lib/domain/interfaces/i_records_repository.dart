import '../models/record.dart';

abstract class IRecordsRepository {
  void getRecords();
  void addRecord(Record record);
  void updateRecord(Record record);

  List<Record> get records;

  // ---------------------------------------------------------------------------
  void addChangeListener(Function() listener);

  // ---------------------------------------------------------------------------
  void removeChangeListener(Function() listener);
}
