import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:introbox/domain/interfaces/i_api.dart';

import 'package:introbox/domain/interfaces/i_user_repository.dart';

import '../../../../domain/locator/locator.dart';
import '../../../../domain/models/user.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const _StatePending()) {
    on<ProfileEvent>((event, emitter) => event.map(
          dataRequested: (event) => _dataRequested(emitter),
          logout: (event) => _logout(emitter),
          updateUser: (event) => _updateUser(event, emitter),
        ));

    add(const ProfileEvent.dataRequested());
  }

  final IUserRepository userRepository = getIt<IUserRepository>();

  final api = getIt<IApi>();

  Future<void> _logout(Emitter emitter) async {
    await userRepository.logout();
    emitter(const ProfileState.logoutSuccess());
  }

  Future<void> _updateUser(_UpdateUser event, Emitter emitter) async {
    try {
      await userRepository.updateUser(
          firstName: event.firstname,
          lastName: event.lastname,
          secondName: event.lastname,
          about: event.about,
          imageBytes: event.imageBytes);
    } on Object {
      emitter(const ProfileState.requestError());
      rethrow;
    }
  }

  Future<void> _dataRequested(Emitter<ProfileState> emitter) async {
    try {
      final user = await api.getUser();
      emitter(ProfileState.screenState(user: user));
      userRepository.setUser(user);
    } on Object {
      emitter(const ProfileState.loadingError());
      rethrow;
    }
  }
}
