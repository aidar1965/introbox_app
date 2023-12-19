import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/auto_router/app_router.dart';
import 'package:moki_tutor/presentation/extetsions/context_extensions.dart';

import '../../common/common_elevated_button.dart';
import '../../common/common_functions.dart';
import '../../common/common_text_field.dart';
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
                          Text('Регистрация',
                              style: context.style18w600$title2),
                          const SizedBox(height: 18),
                          CommonTextField(
                              controller: firstNameController,
                              labelText: 'Имя'),
                          const SizedBox(height: 12),
                          CommonTextField(
                              controller: lastNameController,
                              labelText: 'Фамилия'),
                          const SizedBox(height: 12),
                          CommonTextField(
                              controller: emailController, labelText: 'Email'),
                          const SizedBox(height: 12),
                          CommonTextField(
                              controller: passwordController,
                              obscureText: true,
                              labelText: 'Пароль'),
                          const SizedBox(height: 12),
                          CommonTextField(
                              controller: confirmPasswordController,
                              obscureText: true,
                              labelText: 'Повторите пароль'),
                          const SizedBox(
                            height: 30,
                          ),
                          CommonElevatedButton(
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
                              text: 'Зарегистрироваться'),
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
