part of 'subjects_bloc.dart';

@freezed
class SubjectsState with _$SubjectsState {
  const factory SubjectsState.pending() = _Pending;
  const factory SubjectsState.dataReceived(
      {required List<Subject> subjects,
      required List<SubjectCategory> categories,
      required List<SubjectCategory> selectedCategories,
      Subject? selectedSubject}) = _DataReceived;
  const factory SubjectsState.addSubject() = _AddSubject;
}
