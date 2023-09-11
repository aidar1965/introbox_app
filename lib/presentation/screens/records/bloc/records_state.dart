part of 'records_bloc.dart';

@freezed
class RecordsState with _$RecordsState {
  const factory RecordsState.pending() = _Pending;
  const factory RecordsState.dataReceived(
      {required List<Record> records,
      required List<RecordCategory> categories,
      required List<RecordCategory> selectedCategories}) = _DataReceived;
  const factory RecordsState.addRecord() = _AddRecord;
}
