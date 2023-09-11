part of 'edit_record_bloc.dart';

@freezed
class EditRecordState with _$EditRecordState {
  const factory EditRecordState.pending() = _Pending;
  const factory EditRecordState.dataReceived(List<RecordCategory> categoties,
      List<RecordCategory> selectedCategoties) = _DataReceived;
}
