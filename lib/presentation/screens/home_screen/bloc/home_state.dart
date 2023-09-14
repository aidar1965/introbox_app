part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.notInitialized() = _StateNotInitialized;

  const factory HomeState.initializationCompleted(
      {required bool isAuthorized,
      bool? isRefreshed,
      required bool isPlayerScreenOpened,
      required bool isSubjectPlayerScreeinOpened,
      required bool isCoursePlayerScreenOpened,
      Fragment? record,
      Subject? subject,
      Course? course,
      bool? remote}) = _StateInitializationCompleted;
}
