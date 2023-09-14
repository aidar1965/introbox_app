part of 'edit_record_bloc.dart';

@freezed
class EditFragmentState with _$EditFragmentState {
  const factory EditFragmentState.pending() = _Pending;
  const factory EditFragmentState.dataReceived(
      List<FragmentCategory> categoties,
      List<FragmentCategory> selectedCategoties) = _DataReceived;
}
