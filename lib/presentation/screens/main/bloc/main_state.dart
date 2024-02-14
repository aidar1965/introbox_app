part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.screenState(
      {required bool isAuthorized,
      @Default(false) bool isPending,
      required List<Presentation> presentations}) = _ScreenState;
  const factory MainState.initialLoadingError() = _StateInitialLoadingError;
}
