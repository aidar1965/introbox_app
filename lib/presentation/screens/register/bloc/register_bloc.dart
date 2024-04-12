import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:email_validator/email_validator.dart';

import '../../../../data/api/http_client/request_exception.dart';
import '../../../../domain/interfaces/i_user_repository.dart';
import '../../../../domain/locator/locator.dart';
import '../../../../generated/locale_keys.g.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState.screenState()) {
    on<RegisterEvent>((event, emitter) =>
        event.map(register: (event) => _register(event, emitter)));
  }

  final userRepository = getIt<IUserRepository>();

  Future<void> _register(
      _EventRegister event, Emitter<RegisterState> emitter) async {
    emitter(const RegisterState.screenState(isPending: true));
    if (event.email.isEmpty ||
        event.password.isEmpty ||
        event.confirmPassword.isEmpty ||
        event.firstName.isEmpty ||
        event.lastName.isEmpty) {
      emitter(const RegisterState.requestError(
          errorText: 'Все поля должны быть заполнены'));
      emitter(const RegisterState.screenState(isPending: false));
      return;
    }
    if (event.confirmPassword != event.password) {
      emitter(RegisterState.requestError(
          errorText: LocaleKeys.passwordConfirmNotFit.tr()));
      emitter(const RegisterState.screenState(isPending: false));
      return;
    }

    if (EmailValidator.validate(event.email) == false) {
      emitter(RegisterState.requestError(
          errorText: LocaleKeys.emailFormatError.tr()));
      emitter(const RegisterState.screenState(isPending: false));
      return;
    }
    try {
      await userRepository.register(
        email: event.email.trim(),
        password: event.password.trim(),
        confirmPassword: event.confirmPassword.trim(),
        firstName: event.firstName.trim(),
        lastName: event.lastName.trim(),
      );
      emitter(const RegisterState.requestSuccess());
    } on RequestException catch (e) {
      if (e.httpStatusCode == HttpStatus.badRequest) {
        final errorText = e.response?['message'] as String? ??
            LocaleKeys.commonRequestError.tr();
        emitter(RegisterState.requestError(errorText: errorText));
      } else {
        emitter(const RegisterState.requestError());
        rethrow;
      }
    } on Object {
      emitter(const RegisterState.requestError());
      rethrow;
    } finally {
      emitter(const RegisterState.screenState(isPending: false));
    }
  }
}
