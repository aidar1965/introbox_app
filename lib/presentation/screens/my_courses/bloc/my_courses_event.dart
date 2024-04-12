part of 'my_courses_bloc.dart';

@freezed
class MyCoursesEvent with _$MyCoursesEvent {
  const factory MyCoursesEvent.initialDataRequested({
    String? searchText,
  }) = _EventInitialDataRequested;
  const factory MyCoursesEvent.loadMore({String? searchText}) = _EventLoadMore;
  const factory MyCoursesEvent.onAddCourse(
      {required String title,
      String? description,
      required String channelId,
      String? price,
      Uint8List? imageBytes}) = _EventAddCourse;

  const factory MyCoursesEvent.onUpdateCourse(
      {required String id,
      required String title,
      String? description,
      required String channelId,
      String? price,
      Uint8List? imageBytes}) = _EventUpdateCourse;

  const factory MyCoursesEvent.onDeleteCourse({
    required String id,
  }) = _EventDeleteCourse;

  const factory MyCoursesEvent.onPublishCourse({
    required String id,
  }) = _EventPublishCourse;
}
