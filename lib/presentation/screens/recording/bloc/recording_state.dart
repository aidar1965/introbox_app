part of 'recording_bloc.dart';

@freezed
class RecordingState with _$RecordingState {
  const factory RecordingState.pending() = _Pending;
  const factory RecordingState.dataReceived(List<RecordCategory> categoties,
      List<RecordCategory> selectedCategoties) = _DataReceived;
}
