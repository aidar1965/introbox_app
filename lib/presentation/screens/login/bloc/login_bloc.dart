import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/data/api/request_exception.dart';
import 'package:moki_tutor/domain/interfaces/i_user_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.userRepository}) : super(const _Initial()) {
    on<LoginEvent>((event, emitter) => event.map(
        phoneConfirmed: (event) => _phoneConfirmed(event, emitter),
        loginWithOtp: (event) => _loginWithOtp(event, emitter)));
  }

  final IUserRepository userRepository;

  void _phoneConfirmed(_PhoneConfirmed event, Emitter emitter) async {
    emitter(const LoginState.initial());
    try {
      await userRepository.otpRequest(phone: event.phone, lang: 'ru');
      emitter(LoginState.otpRoute(phone: event.phone));
    } on RequestException catch (requestException) {
      log(requestException.httpStatusCode.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _loginWithOtp(_LoginWithOtp event, Emitter emitter) async {
    emitter(const LoginState.pending());
    try {
      await userRepository.loginWithOtp(otp: event.otp, phone: event.phone);
    } on RequestException catch (requestException) {
      log(requestException.httpStatusCode.toString());
    } catch (e) {
      log(e.toString());
    }
  }
}
