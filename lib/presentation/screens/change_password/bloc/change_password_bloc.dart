import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/locator/locator.dart';

part 'change_password_state.dart';
part 'change_password_event.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(const ChangePasswordState.screenState()) {
    on<ChangePasswordEvent>(
      (event, emitter) =>
          event.map(changePassword: (event) => changePassword(event, emitter)),
    );
  }

  final api = getIt<IApi>();

  Future<void> changePassword(
      _EventRecoverPassword event, Emitter<ChangePasswordState> emitter) async {
    if (event.password.isEmpty ||
        event.confirmPassword.isEmpty ||
        event.oldPassword.isEmpty) {
      emitter(const ChangePasswordState.changePasswordError(
          errorText: 'Все поля должны быть заполнены'));
      return;
    }
    if (event.password != event.confirmPassword) {
      emitter(const ChangePasswordState.changePasswordError(
          errorText: 'Повтор пароля не совпадает с введенным'));
      return;
    }

    emitter(const ChangePasswordState.screenState(isPending: true));
    try {
      await api.setPassword(
          oldPassword: event.oldPassword.trim(),
          password: event.password.trim(),
          confirmPassword: event.confirmPassword);
      emitter(const ChangePasswordState.changePasswordSuccess());
    } on Object {
      emitter(const ChangePasswordState.changePasswordError());
    } finally {
      emitter(const ChangePasswordState.screenState());
    }
  }
}
