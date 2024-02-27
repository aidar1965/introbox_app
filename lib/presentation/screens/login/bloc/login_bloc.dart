import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:email_validator/email_validator.dart';
import '../../../../data/api/http_client/request_exception.dart';

import '../../../../domain/interfaces/i_user_repository.dart';

import '../../../../domain/locator/locator.dart';
import '../../../../generated/locale_keys.g.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _ScreenState(isPending: false)) {
    on<LoginEvent>((event, emitter) => event.map(
          login: (event) => _login(event, emitter),
        ));
  }

  final IUserRepository userRepository = getIt<IUserRepository>();

  Future<void> _login(_EventLogin event, Emitter<LoginState> emitter) async {
    emitter(const LoginState.screenState(isPending: true));
    if (event.email.isEmpty || event.password.isEmpty) {
      emitter(LoginState.loginError(errorText: LocaleKeys.notFilledError.tr()));
      emitter(const LoginState.screenState(isPending: false));
      return;
    }

    if (EmailValidator.validate(event.email) == false) {
      emitter(
          LoginState.loginError(errorText: LocaleKeys.emailFormatError.tr()));
      emitter(const LoginState.screenState(isPending: false));
      return;
    }

    try {
      await userRepository.login(
          email: event.email.trim(), password: event.password.trim());
      emitter(const LoginState.loginSuccess());
    } on RequestException catch (e) {
      if (e.httpStatusCode == HttpStatus.notFound) {
        emitter(LoginState.loginError(errorText: LocaleKeys.userNotFound.tr()));
      } else {
        emitter(LoginState.loginError(
            errorText: LocaleKeys.commonRequestError.tr()));
        rethrow;
      }
    } on Object {
      emitter(
          LoginState.loginError(errorText: LocaleKeys.commonRequestError.tr()));
      rethrow;
    } finally {
      emitter(const LoginState.screenState(isPending: false));
    }
  }
}
