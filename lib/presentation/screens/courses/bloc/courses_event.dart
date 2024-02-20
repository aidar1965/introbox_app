part of 'courses_bloc.dart';

@freezed
class CoursesEvent with _$CoursesEvent {
  const factory CoursesEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory CoursesEvent.loadMore() = _EventLoadMore;
}
