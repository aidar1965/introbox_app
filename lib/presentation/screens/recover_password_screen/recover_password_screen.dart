import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbox/generated/locale_keys.g.dart';
import 'package:introbox/presentation/common/common_functions.dart';
import 'package:introbox/presentation/extetsions/context_extensions.dart';

import '../../common/common_elevated_button.dart';
import '../../common/common_text_field.dart';
import 'package:auto_route/auto_route.dart';

import 'bloc/recover_password_bloc.dart';

@RoutePage()
class RecoverPasswordScreen extends StatelessWidget {
  const RecoverPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();

    return BlocProvider(
      create: (context) => RecoverPasswordBloc(),
      child: BlocConsumer<RecoverPasswordBloc, RecoverPasswordState>(
        listener: (context, state) => state.mapOrNull(
            recoverError: (state) =>
                _onRecoverPasswordError(context, state.errorText),
            recoverSuccess: (_) async {
              await CommonFunctions.showStyledDialog(
                  context: context,
                  message: LocaleKeys.recoverPasswordMessage.tr(),
                  positiveButtonText: LocaleKeys.ok.tr());
              return null;
            }),
        buildWhen: ((previous, current) =>
            current.maybeMap(orElse: () => false, screenState: (_) => true)),
        builder: (context, state) => state.maybeMap(
            orElse: () =>
                throw UnsupportedError('State not supported for building'),
            screenState: (state) => Scaffold(
                  appBar: AppBar(title: Text(LocaleKeys.passwordRecovery.tr())),
                  body: Center(
                    child: SingleChildScrollView(
                      child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 300),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                LocaleKeys.passwordRecovery.tr(),
                                style: context.style18w600$title2,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              CommonTextField(
                                  controller: emailController,
                                  labelText: LocaleKeys.email.tr()),
                              const SizedBox(
                                height: 30,
                              ),
                              CommonElevatedButton(
                                  isPending: state.isPending,
                                  onPressed: () {
                                    if (emailController.text.isNotEmpty) {
                                      BlocProvider.of<RecoverPasswordBloc>(
                                              context)
                                          .add(RecoverPasswordEvent.recover(
                                        email: emailController.text,
                                      ));
                                    }
                                  },
                                  text: LocaleKeys.recover.tr()),
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

  void _onRecoverPasswordError(BuildContext context, String? errorText) {
    CommonFunctions.showMessage(
        context, errorText ?? LocaleKeys.commonRequestError.tr(), Reason.error);
  }
}
