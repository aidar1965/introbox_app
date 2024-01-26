import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/locator/locator.dart';
import 'package:email_validator/email_validator.dart';

part 'recover_password_state.dart';
part 'recover_password_event.dart';
part 'recover_password_bloc.freezed.dart';

class RecoverPasswordBloc
    extends Bloc<RecoverPasswordEvent, RecoverPasswordState> {
  RecoverPasswordBloc() : super(const RecoverPasswordState.screenState()) {
    on<RecoverPasswordEvent>((event, emitter) =>
        event.map(recover: (event) => onRecoverClicked(event, emitter)));
  }

  final api = getIt<IApi>();

  Future<void> onRecoverClicked(
      _EventRecover event, Emitter<RecoverPasswordState> emitter) async {
    if (EmailValidator.validate(event.email) == false) {
      emitter(const RecoverPasswordState.recoverError(
          errorText: 'Неверный формат email'));
      emitter(const RecoverPasswordState.screenState());
      return;
    }
    emitter(const RecoverPasswordState.screenState(isPending: true));
    try {
      await api.recoverPassword(email: event.email.trim());
      emitter(const RecoverPasswordState.recoverSuccess());
    } on Object {
      emitter(const RecoverPasswordState.recoverError());
      emitter(const RecoverPasswordState.screenState());
    }
  }
}
