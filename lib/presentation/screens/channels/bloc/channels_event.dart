part of 'channels_bloc.dart';

@freezed
class ChannelsEvent with _$ChannelsEvent {
  const factory ChannelsEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory ChannelsEvent.onCreateChannel({
    required String title,
    String? description,
    required int channelTypeId,
    required bool isPublic,
  }) = _EventOnCreateChannel;
  const factory ChannelsEvent.onEditChannel({
    required String channelId,
    required String title,
    String? description,
    required int channelTypeId,
    required bool isPublic,
  }) = _EventOnEditChannel;
  const factory ChannelsEvent.onAddCompanyToChannel({
    String? companyId,
    required String channelId,
  }) = _EventOnAddCompanyToChannel;
}
