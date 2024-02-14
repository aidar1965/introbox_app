part of 'channels_bloc.dart';

@freezed
class ChannelsState with _$ChannelsState {
  const factory ChannelsState.pending() = _StatePending;
  const factory ChannelsState.initialLoadingError(
      {@Default(false) bool isPending}) = _StateInitialLoadingError;
  const factory ChannelsState.screenState(
      {required List<Channel> channels,
      required List<Company> companies}) = _ScreenState;
  const factory ChannelsState.addChannelError({String? errorText}) =
      _StateAddChennelError;
  const factory ChannelsState.addChannelSuccess() = _StateAddChannelSuccess;
}
