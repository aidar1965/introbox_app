import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auto_router/app_router.dart';
import '../../../common/common_functions.dart';
import '../../../common/common_text_field.dart';
import 'bloc/confirmation_bloc.dart';

@RoutePage()
class ConfirmationScreen extends StatelessWidget {
  ConfirmationScreen({super.key, required this.email});

  final String email;
  final confirmationCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 320),
          child: BlocProvider(
              create: (context) => ConfirmationBloc(),
              child: BlocConsumer<ConfirmationBloc, ConfirmationState>(
                  listener: (context, state) => state.mapOrNull(
                      confirmationSuccess: (state) {
                        CommonFunctions.showMessage(context,
                            'Вы успешно зарегистрировались', Reason.neutral);
                        context.router.popAndPush(const LoginRoute());
                        return null;
                      },
                      confirmationError: (state) =>
                          CommonFunctions.showStyledDialog(
                              context: context,
                              message: state.errorText ?? 'Ошибка!',
                              positiveButtonText: 'Ok')),
                  listenWhen: (previous, current) => current.maybeMap(
                        orElse: () => false,
                        confirmationError: (_) => true,
                        confirmationSuccess: (_) => true,
                      ),
                  buildWhen: (previous, current) => current.maybeMap(
                      orElse: () => false, screenState: (current) => true),
                  builder: (context, state) => state.maybeMap(
                      orElse: () =>
                          throw UnsupportedError('state not supported'),
                      screenState: (state) =>
                          Column(mainAxisSize: MainAxisSize.min, children: [
                            Text(
                                'Введите код, полученный для ротвержения регистрации на Вашу почту $email'),
                            const SizedBox(
                              height: 30,
                            ),
                            CommonTextField(
                                controller: confirmationCodeController,
                                labelText: 'Код потверждения'),
                            const SizedBox(
                              height: 30,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<ConfirmationBloc>(context)
                                      .add(ConfirmationEvent.confirmSubmitted(
                                          email: email,
                                          code:
                                              confirmationCodeController.text));
                                },
                                child: const Text('Отправить')),
                          ])))),
        )));
  }
}
