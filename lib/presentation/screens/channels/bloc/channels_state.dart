part of 'channels_bloc.dart';

@freezed
class ChannelsState with _$ChannelsState {
  const factory ChannelsState.pending() = _StatePending;
  const factory ChannelsState.initialLoadingError(
      {@Default(false) bool isPending}) = _StateInitialLoadingError;
  const factory ChannelsState.screenState(
      {required List<Channel> channels,
      required List<Company> companies}) = _ScreenState;

  const factory ChannelsState.requestSuccess() = _StateRequestSuccess;
  const factory ChannelsState.requestError({String? errorText}) =
      _StateRequestError;
}
