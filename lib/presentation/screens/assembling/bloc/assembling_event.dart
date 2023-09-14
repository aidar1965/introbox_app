part of 'assembling_bloc.dart';

@freezed
class AssemblingEvent with _$AssemblingEvent {
  const factory AssemblingEvent.fetchInitialData() = _FetchInitialData;
  const factory AssemblingEvent.selectCategory(FragmentCategory category) =
      _SelectCategory;
  const factory AssemblingEvent.selectSubjectCategory(
      SubjectCategory subjectCategory) = _SelectSubjectCategory;
  const factory AssemblingEvent.addSubjectCategory(String name) =
      _AddSubjectCategory;
  const factory AssemblingEvent.addFragment(Fragment record) = _AddFragment;
  const factory AssemblingEvent.setPlayerStatus(PlayerStatus playerStatus) =
      _SetPlayerStatus;
  const factory AssemblingEvent.onReorder(int oldIndex, int newIndex) =
      _OnReorder;
  const factory AssemblingEvent.playFragment(Fragment record) = _PlayFragment;
  const factory AssemblingEvent.startTimer() = _StartTimer;
  const factory AssemblingEvent.stopTimer() = _StopTimer;
  const factory AssemblingEvent.clearTimer() = _ClearTimer;
  const factory AssemblingEvent.resendData() = _ResendData;
  const factory AssemblingEvent.saveSubject({
    required String title,
    String? description,
  }) = _SaveSubject;
}
