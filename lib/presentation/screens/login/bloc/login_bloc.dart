import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:moki_tutor/domain/interfaces/i_user_repository.dart';

import '../../../../domain/locator/locator.dart';

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
    try {
      await userRepository.login(email: event.email, password: event.password);
      emitter(const LoginState.loginSuccess());
    } on Object {
      emitter(const LoginState.loginError(errorText: 'Ошибка'));
      rethrow;
    }
  }
}
