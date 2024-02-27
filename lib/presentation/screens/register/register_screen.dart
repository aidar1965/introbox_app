import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbox/generated/locale_keys.g.dart';
import 'package:introbox/presentation/auto_router/app_router.dart';
import 'package:introbox/presentation/extetsions/context_extensions.dart';

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
      appBar: AppBar(),
      body: Center(
          child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 320),
              child: BlocProvider(
                  create: (context) => RegisterBloc(),
                  child: BlocConsumer<RegisterBloc, RegisterState>(
                    listener: (context, state) => state.mapOrNull(
                      requestError: (state) => _onRequestError(
                          context,
                          state.errorText ??
                              LocaleKeys.commonRequestError.tr()),
                      requestSuccess: (_) => _onRequestSuccess(context),
                    ),
                    buildWhen: (pr, curr) => curr.maybeMap(
                        screenState: (_) => true, orElse: () => false),
                    builder: (context, state) => state.maybeMap(
                      orElse: () => throw UnsupportedError(''),
                      screenState: (state) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(LocaleKeys.registration.tr(),
                              style: context.style18w600$title2),
                          const SizedBox(height: 18),
                          CommonTextField(
                              controller: firstNameController,
                              labelText: LocaleKeys.firstName.tr()),
                          const SizedBox(height: 12),
                          CommonTextField(
                              controller: lastNameController,
                              labelText: LocaleKeys.lastName.tr()),
                          const SizedBox(height: 12),
                          CommonTextField(
                              controller: emailController,
                              labelText: LocaleKeys.email.tr()),
                          const SizedBox(height: 12),
                          CommonTextField(
                              controller: passwordController,
                              obscureText: true,
                              labelText: LocaleKeys.password.tr()),
                          const SizedBox(height: 12),
                          CommonTextField(
                              controller: confirmPasswordController,
                              obscureText: true,
                              labelText: LocaleKeys.repeatPassword.tr()),
                          const SizedBox(
                            height: 30,
                          ),
                          CommonElevatedButton(
                              isPending: state.isPending,
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
                              text: LocaleKeys.registration.tr()),
                          const SizedBox(
                            height: 30,
                          ),
                          TextButton(
                              onPressed: () => context.router.pop(),
                              child: Text(LocaleKeys.login.tr()))
                        ],
                      ),
                    ),
                  )))),
    );
  }

  void _onRequestError(BuildContext context, String message) {
    CommonFunctions.showMessage(context, message, Reason.error);
  }

  Future<void> _onRequestSuccess(
    BuildContext context,
  ) async {
    await CommonFunctions.showStyledDialog(
        context: context,
        message: LocaleKeys.registerMessage.tr(),
        positiveButtonText: LocaleKeys.ok.tr());
    if (context.mounted) {
      context.router.push(ConfirmationRoute(email: emailController.text));
    }
  }
}
