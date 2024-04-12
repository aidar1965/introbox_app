part of 'courses_bloc.dart';

@freezed
class CoursesEvent with _$CoursesEvent {
  const factory CoursesEvent.initialDataRequested({String? searchText}) =
      _EventInitialDataRequested;
  const factory CoursesEvent.loadMore({String? searchText}) = _EventLoadMore;
}
