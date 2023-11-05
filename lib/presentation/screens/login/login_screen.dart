import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import '../../auto_router/app_router.dart';
import 'bloc/login_bloc.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) => state.mapOrNull(
            loginError: (state) => _onLoginError(context, state.errorText),
            loginSuccess: (_) => context.router.push(const CoursesRoute())),
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 300),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: emailController,
                        decoration: const InputDecoration(hintText: 'Email'),
                      ),
                      TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(hintText: 'Пароль'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<LoginBloc>(context).add(
                                LoginEvent.login(
                                    email: emailController.text,
                                    password: passwordController.text));
                          },
                          child: const Text('Войти')),
                      const SizedBox(
                        height: 30,
                      ),
                      TextButton(
                          onPressed: () => context.router.push(RegisterRoute()),
                          child: Text('Зарегистрироваться'))
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }

  void _onLoginError(BuildContext context, String? errorText) {
    CommonFunctions.showMessage(context, errorText ?? 'Ошибка', Reason.error);
  }
}
