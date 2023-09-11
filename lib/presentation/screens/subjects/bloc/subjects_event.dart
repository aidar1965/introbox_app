part of 'subjects_bloc.dart';

@freezed
class SubjectsEvent with _$SubjectsEvent {
  const factory SubjectsEvent.dataRequested() = _DataRequested;
  const factory SubjectsEvent.resendData() = _ResendRequested;
  const factory SubjectsEvent.newSubject() = _NewSubject;
  const factory SubjectsEvent.selectCategory(SubjectCategory category) =
      _SelectCategory;
  const factory SubjectsEvent.selectSubject(Subject subject) = _SelectSubject;
  const factory SubjectsEvent.editCategory(SubjectCategory category) =
      _EditCategory;
  const factory SubjectsEvent.deleteCategory(SubjectCategory category) =
      _DeleteCategory;
}
