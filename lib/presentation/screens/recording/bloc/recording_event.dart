part of 'recording_bloc.dart';

@freezed
class RecordingEvent with _$RecordingEvent {
  const factory RecordingEvent.saveRecord(
      {required String title,
      String? description,
      Map<String, int>? images,
      required String audioPath,
      required int recordDuration}) = _SaveRecord;
  const factory RecordingEvent.addCategory(String name) = _AddCategory;
  const factory RecordingEvent.fetchCategories() = _FetchCategories;
  const factory RecordingEvent.editCategory(
      String name, RecordCategory category) = _EditCategory;
  const factory RecordingEvent.deleteCategory(RecordCategory category) =
      _DeleteCategory;
  const factory RecordingEvent.selectCategory(RecordCategory category) =
      _SelectCategory;
}
