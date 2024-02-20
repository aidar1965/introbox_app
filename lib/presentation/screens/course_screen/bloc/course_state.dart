part of 'course_bloc.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState.pending() = _StatePending;
  const factory CourseState.screenState({required Course course}) =
      _ScreenState;
  const factory CourseState.requestError({String? errorText}) =
      _StateRequestError;
  const factory CourseState.requestSuccess({String? message}) =
      _StateRequestSuccess;
  const factory CourseState.loadingError() = _StateLoadingError;
}
