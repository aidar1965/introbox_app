part of 'records_bloc.dart';

@freezed
class RecordsEvent with _$RecordsEvent {
  const factory RecordsEvent.dataRequested() = _DataRequested;
  const factory RecordsEvent.newRecord() = _NewRecord;
  const factory RecordsEvent.selectCategory(RecordCategory category) =
      _SelectCategory;
  const factory RecordsEvent.editCategory(RecordCategory category) =
      _EditCategory;
  const factory RecordsEvent.deleteCategory(RecordCategory category) =
      _DeleteCategory;
  const factory RecordsEvent.resendData() = _ResendData;
}
