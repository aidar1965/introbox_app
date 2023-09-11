part of 'edit_subject_bloc.dart';

@freezed
class EditSubjectState with _$EditSubjectState {
  const factory EditSubjectState.pending() = _Pending;
  const factory EditSubjectState.dataReceived(
      {List<RecordCategory>? categories,
      List<RecordCategory>? selectedCategories,
      required List<SubjectCategory> subjectCategories,
      required List<SubjectCategory> selectedSubjectCategories,
      List<Record>? records,
      required List<Record> subjectRecords,
      PlayerStatus? playerStatus,
      Record? playingRecord,
      int? secondsPassed}) = _DataReceived;
}
