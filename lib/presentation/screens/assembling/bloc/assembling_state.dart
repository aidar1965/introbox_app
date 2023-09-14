part of 'assembling_bloc.dart';

@freezed
class AssemblingState with _$AssemblingState {
  const factory AssemblingState.pending() = _Pending;
  const factory AssemblingState.dataReceived(
      {List<FragmentCategory>? categories,
      List<FragmentCategory>? selectedCategories,
      required List<SubjectCategory> subjectCategories,
      required List<SubjectCategory> selectedSubjectCategories,
      List<Fragment>? records,
      required List<Fragment> subjectFragments,
      PlayerStatus? playerStatus,
      Fragment? playingFragment,
      int? secondsPassed}) = _DataReceived;
}
