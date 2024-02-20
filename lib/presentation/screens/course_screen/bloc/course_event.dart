part of 'course_bloc.dart';

@freezed
class CourseEvent with _$CourseEvent {
  const factory CourseEvent.initialDataRequested(String id) =
      _EventInitialDataRequested;
  const factory CourseEvent.reorderPresentations({required List<String> ids}) =
      _EventReorderPresentations;
  const factory CourseEvent.removePresentationFromCourse({required String id}) =
      _EventRemovePresentationFromCourse;
}
