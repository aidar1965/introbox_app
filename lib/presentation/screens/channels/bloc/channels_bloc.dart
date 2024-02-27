import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/channel.dart';
import '../../../../domain/models/company.dart';

part 'channels_state.dart';
part 'channels_event.dart';
part 'channels_bloc.freezed.dart';

class ChannelsBloc extends Bloc<ChannelsEvent, ChannelsState> {
  ChannelsBloc() : super(const ChannelsState.pending()) {
    on<ChannelsEvent>((event, emitter) => event.map(
        initialDataRequested: (_) => initialDataRequested(emitter),
        onCreateChannel: (event) => onCreateChannel(event, emitter),
        onEditChannel: (event) => onEditChannel(event, emitter),
        onAddCompanyToChannel: (event) => onAddCompanyToChannel(event, emitter),
        onDeleteChannel: (event) => onDeleteChannel(event, emitter)));

    add(const ChannelsEvent.initialDataRequested());
  }

  final api = getIt<IApi>();
  late _ScreenState _screenState;

  Future<void> initialDataRequested(Emitter<ChannelsState> emitter) async {
    emitter(const ChannelsState.pending());
    try {
      final channels = await api.getChannels();
      final companies = await api.getCompanies();

      _screenState = _ScreenState(channels: channels, companies: companies);
      emitter(_screenState);
    } on Object {
      emitter(const ChannelsState.initialLoadingError());
      rethrow;
    }
  }

  Future<void> onCreateChannel(
      _EventOnCreateChannel event, Emitter<ChannelsState> emitter) async {
    if (event.title.isEmpty) {
      emitter(const ChannelsState.requestError(
          errorText: 'Поле название должно быть заполнено'));
    }
    try {
      await api.addChannel(
          title: event.title,
          description: event.description,
          channelTypeId: event.channelTypeId,
          isPublic: event.isPublic);
      emitter(const ChannelsState.requestSuccess());
      add(const ChannelsEvent.initialDataRequested());
    } on Object {
      emitter(const ChannelsState.requestError());
      rethrow;
    }
  }

  Future<void> onEditChannel(
      _EventOnEditChannel event, Emitter<ChannelsState> emitter) async {
    if (event.title.isEmpty) {
      emitter(const ChannelsState.requestError(
          errorText: 'Поле название должно быть заполнено'));
    }
    try {
      await api.editChannel(
          channelId: event.channelId,
          title: event.title,
          description: event.description,
          channelTypeId: event.channelTypeId,
          isPublic: event.isPublic);
      emitter(const ChannelsState.requestSuccess());
      add(const ChannelsEvent.initialDataRequested());
    } on Object {
      emitter(const ChannelsState.requestError());
      rethrow;
    }
  }

  Future<void> onAddCompanyToChannel(
      _EventOnAddCompanyToChannel event, Emitter<ChannelsState> emitter) async {
    try {
      await api.addCompanyToChannel(
          channelId: event.channelId,
          companyId: event.companyId != 'no_company' ? event.companyId : null);
      add(const ChannelsEvent.initialDataRequested());
    } on Object {
      emitter(const ChannelsState.requestError());
      rethrow;
    }
  }

  Future<void> onDeleteChannel(
      _EventOnDeleteChannel event, Emitter<ChannelsState> emitter) async {
    try {
      await api.deleteChannel(
        id: event.id,
      );
      add(const ChannelsEvent.initialDataRequested());
    } on Object {
      emitter(const ChannelsState.requestError());
      rethrow;
    }
  }
}
