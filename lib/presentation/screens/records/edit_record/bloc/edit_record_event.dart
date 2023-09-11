part of 'edit_record_bloc.dart';

@freezed
class EditRecordEvent with _$EditRecordEvent {
  const factory EditRecordEvent.saveRecord(
      {required Record record,
      required String title,
      String? description,
      Map<String, int>? images,
      required String audioPath,
      required int recordDuration}) = _SaveRecord;
  const factory EditRecordEvent.addCategory(String name) = _AddCategory;
  const factory EditRecordEvent.fetchCategories() = _FetchCategories;
  const factory EditRecordEvent.editCategory(
      String name, RecordCategory category) = _EditCategory;
  const factory EditRecordEvent.deleteCategory(RecordCategory category) =
      _DeleteCategory;
  const factory EditRecordEvent.selectCategory(RecordCategory category) =
      _SelectCategory;
}
