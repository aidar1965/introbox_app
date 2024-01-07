import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';
import 'package:moki_tutor/presentation/extetsions/context_extensions.dart';
import '../../auto_router/app_router.dart';
import '../../common/common_elevated_button.dart';
import '../../common/common_text_field.dart';
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
            loginSuccess: (_) =>
                context.router.replace(const PresentationsRoute())),
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
                      Text('Вход', style: context.style18w600$title2),
                      const SizedBox(
                        height: 24,
                      ),
                      CommonTextField(
                          controller: emailController, labelText: 'Email'),
                      const SizedBox(
                        height: 12,
                      ),
                      CommonTextField(
                        controller: passwordController,
                        labelText: 'Пароль',
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CommonElevatedButton(
                          onPressed: () {
                            BlocProvider.of<LoginBloc>(context).add(
                                LoginEvent.login(
                                    email: emailController.text,
                                    password: passwordController.text));
                          },
                          text: 'Войти'),
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
