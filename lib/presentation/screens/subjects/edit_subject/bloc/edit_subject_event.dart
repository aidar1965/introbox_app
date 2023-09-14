part of 'edit_subject_bloc.dart';

@freezed
class EditSubjectEvent with _$EditSubjectEvent {
  const factory EditSubjectEvent.fetchInitialData() = _FetchInitialData;
  const factory EditSubjectEvent.selectCategory(FragmentCategory category) =
      _SelectCategory;
  const factory EditSubjectEvent.selectSubjectCategory(
      SubjectCategory subjectCategory) = _SelectSubjectCategory;
  const factory EditSubjectEvent.addSubjectCategory(String name) =
      _AddSubjectCategory;
  const factory EditSubjectEvent.addFragment(Fragment record) = _AddFragment;
  const factory EditSubjectEvent.setPlayerStatus(PlayerStatus playerStatus) =
      _SetPlayerStatus;
  const factory EditSubjectEvent.onReorder(int oldIndex, int newIndex) =
      _OnReorder;
  const factory EditSubjectEvent.playFragment(Fragment record) = _PlayFragment;
  const factory EditSubjectEvent.startTimer() = _StartTimer;
  const factory EditSubjectEvent.stopTimer() = _StopTimer;
  const factory EditSubjectEvent.clearTimer() = _ClearTimer;
  const factory EditSubjectEvent.resendData() = _ResendData;
  const factory EditSubjectEvent.saveSubject({
    required String title,
    String? description,
  }) = _SaveSubject;
}
