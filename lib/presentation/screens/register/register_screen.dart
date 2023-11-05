import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/auto_router/app_router.dart';

import '../../common/common_functions.dart';
import 'bloc/register_bloc.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 320),
              child: BlocProvider(
                  create: (context) => RegisterBloc(),
                  child: BlocConsumer<RegisterBloc, RegisterState>(
                    listener: (context, state) => state.mapOrNull(
                      requestError: (state) => _onRequestError(
                          context, state.errorText ?? 'Что-то пошло не так...'),
                      requestSuccess: (_) => _onRequestSuccess(context),
                    ),
                    buildWhen: (pr, curr) => curr.maybeMap(
                        screenState: (_) => true, orElse: () => false),
                    builder: (context, state) => state.maybeMap(
                      orElse: () => throw UnsupportedError(''),
                      screenState: (state) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            controller: firstNameController,
                            decoration: const InputDecoration(hintText: 'Имя'),
                          ),
                          TextField(
                            controller: lastNameController,
                            decoration:
                                const InputDecoration(hintText: 'Фамилия'),
                          ),
                          TextField(
                            controller: emailController,
                            decoration:
                                const InputDecoration(hintText: 'Email'),
                          ),
                          TextField(
                            controller: passwordController,
                            decoration:
                                const InputDecoration(hintText: 'Пароль'),
                          ),
                          TextField(
                            controller: confirmPasswordController,
                            decoration: const InputDecoration(
                                hintText: 'Повторите пароль'),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<RegisterBloc>(context).add(
                                    RegisterEvent.register(
                                        email: emailController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            confirmPasswordController.text,
                                        firstName: firstNameController.text,
                                        lastName: lastNameController.text));
                              },
                              child: const Text('Зарегистрироваться')),
                          const SizedBox(
                            height: 30,
                          ),
                          TextButton(
                              onPressed: () => context.router.pop(),
                              child: const Text('Войти'))
                        ],
                      ),
                    ),
                  )))),
    );
  }

  void _onRequestError(BuildContext context, String message) {
    CommonFunctions.showStyledDialog(
      context: context,
      message: message,
      positiveButtonText: 'Ok',
    );
  }

  Future<void> _onRequestSuccess(
    BuildContext context,
  ) async {
    await CommonFunctions.showStyledDialog(
        context: context,
        message: 'На Ваш email выслан код для подтверждения регистрации',
        positiveButtonText: 'Ок');
    if (context.mounted) {
      context.router.push(ConfirmationRoute(email: emailController.text));
    }
  }
}
