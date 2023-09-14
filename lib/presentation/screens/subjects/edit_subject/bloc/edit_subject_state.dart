part of 'edit_subject_bloc.dart';

@freezed
class EditSubjectState with _$EditSubjectState {
  const factory EditSubjectState.pending() = _Pending;
  const factory EditSubjectState.dataReceived(
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
