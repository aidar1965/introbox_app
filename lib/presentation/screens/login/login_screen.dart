import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbox/generated/locale_keys.g.dart';
import 'package:introbox/presentation/common/common_functions.dart';
import 'package:introbox/presentation/extetsions/context_extensions.dart';
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
              loginSuccess: (_) => context.router.replace(const MainRoute())),
          buildWhen: ((previous, current) =>
              current.maybeMap(orElse: () => false, screenState: (_) => true)),
          builder: (context, state) => state.maybeMap(
            orElse: () =>
                throw UnsupportedError('State not supporting nuilding'),
            screenState: (state) {
              return Scaffold(
                appBar: AppBar(),
                body: Center(
                  child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(LocaleKeys.login.tr(),
                                style: context.style18w600$title2),
                            const SizedBox(
                              height: 24,
                            ),
                            CommonTextField(
                                controller: emailController,
                                labelText: LocaleKeys.email.tr()),
                            const SizedBox(
                              height: 12,
                            ),
                            CommonTextField(
                              controller: passwordController,
                              labelText: LocaleKeys.password.tr(),
                              obscureText: true,
                              onSubmit: () =>
                                  BlocProvider.of<LoginBloc>(context).add(
                                      LoginEvent.login(
                                          email: emailController.text,
                                          password: passwordController.text)),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            CommonElevatedButton(
                                isPending: state.isPending,
                                onPressed: () {
                                  BlocProvider.of<LoginBloc>(context).add(
                                      LoginEvent.login(
                                          email: emailController.text,
                                          password: passwordController.text));
                                },
                                text: LocaleKeys.enter.tr()),
                            const SizedBox(
                              height: 30,
                            ),
                            TextButton(
                                onPressed: () =>
                                    context.router.push(RegisterRoute()),
                                child: Text(LocaleKeys.registration.tr())),
                            const SizedBox(
                              height: 24,
                            ),
                            TextButton(
                                onPressed: () => context.router
                                    .push(const RecoverPasswordRoute()),
                                child: Text(LocaleKeys.forgotPassword.tr()))
                          ],
                        ),
                      )),
                ),
              );
            },
          ),
        ));
  }

  void _onLoginError(BuildContext context, String? errorText) {
    CommonFunctions.showMessage(
        context, errorText ?? LocaleKeys.commonRequestError.tr(), Reason.error);
  }
}
