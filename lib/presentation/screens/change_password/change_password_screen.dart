import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/presentation/common/common_functions.dart';

import '../../common/common_elevated_button.dart';
import '../../common/common_text_field.dart';
import 'package:auto_route/auto_route.dart';

import 'bloc/change_password_bloc.dart';

@RoutePage()
class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController oldPasswordController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return BlocProvider(
      create: (context) => ChangePasswordBloc(),
      child: BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
        listener: (context, state) => state.mapOrNull(
            changePasswordError: (state) =>
                _onChangePasswordError(context, state.errorText),
            changePasswordSuccess: (_) => context.router.pop()),
        buildWhen: ((previous, current) =>
            current.maybeMap(orElse: () => false, screenState: (_) => true)),
        builder: (context, state) => state.maybeMap(
            orElse: () =>
                throw UnsupportedError('State not supported for building'),
            screenState: (state) => Scaffold(
                  appBar: AppBar(title: Text('Изменение пароля')),
                  body: Center(
                    child: SingleChildScrollView(
                      child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 300),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CommonTextField(
                                  obscureText: true,
                                  controller: oldPasswordController,
                                  labelText: 'Действующий пароль'),
                              const SizedBox(
                                height: 24,
                              ),
                              CommonTextField(
                                  obscureText: true,
                                  controller: passwordController,
                                  labelText: 'Новый пароль'),
                              const SizedBox(
                                height: 24,
                              ),
                              CommonTextField(
                                  obscureText: true,
                                  controller: confirmPasswordController,
                                  labelText: 'Повтор пароля'),
                              const SizedBox(
                                height: 30,
                              ),
                              CommonElevatedButton(
                                  isPending: state.isPending,
                                  onPressed: () {
                                    if (passwordController.text.isNotEmpty &&
                                        confirmPasswordController
                                            .text.isNotEmpty) {
                                      BlocProvider.of<ChangePasswordBloc>(
                                              context)
                                          .add(ChangePasswordEvent
                                              .changePassword(
                                        oldPassword: oldPasswordController.text,
                                        password: passwordController.text,
                                        confirmPassword:
                                            confirmPasswordController.text,
                                      ));
                                    }
                                  },
                                  text: 'Изменить'),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          )),
                    ),
                  ),
                )),
      ),
    );
  }

  void _onChangePasswordError(BuildContext context, String? errorText) {
    CommonFunctions.showMessage(
        context,
        errorText ?? 'Произошла ошибка запроса, попробуйте позже',
        Reason.error);
  }
}
