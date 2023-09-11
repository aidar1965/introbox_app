part of 'assembling_bloc.dart';

@freezed
class AssemblingState with _$AssemblingState {
  const factory AssemblingState.pending() = _Pending;
  const factory AssemblingState.dataReceived(
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
