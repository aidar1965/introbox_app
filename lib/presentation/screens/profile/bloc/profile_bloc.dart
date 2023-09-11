import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:moki_tutor/domain/interfaces/i_user_repository.dart';

import '../../../../data/api/request_exception.dart';
import '../../../../domain/models/user.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required this.userRepository,
  }) : super(_Initial(userRepository.user)) {
    on<ProfileEvent>((event, emitter) => event.map(
          started: (event) =>
              emitter(ProfileState.initial(userRepository.user)),
          logout: (event) => _logout(),
          updateUser: (event) => _updateUser(event, emitter),
          uploadImage: (event) => _uploadImage(event, emitter),
        ));
  }

  final IUserRepository userRepository;

  void _logout() {
    userRepository.logout();
  }

  Future<void> _updateUser(_UpdateUser event, Emitter emitter) async {
    User user = userRepository.user!.copyWith(
        firstName: event.firstname,
        secondName: event.secondname,
        lastName: event.lastname,
        about: event.about);
    try {
      await userRepository.updateUser(user: user);
    } on RequestException catch (requestException) {
      log(requestException.httpStatusCode.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _uploadImage(_UploadImage event, Emitter emitter) async {
    try {
      await userRepository.uploadUserImage(image: event.image);
    } on RequestException catch (requestException) {
      log(requestException.httpStatusCode.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<void> close() {
    log('-------------- bloc closed ----------------------------');
    return super.close();
  }
}
