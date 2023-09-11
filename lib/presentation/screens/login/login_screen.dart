import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/domain/di/di.dart';
import 'bloc/login_bloc.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return BlocProvider(
      create: (context) => Di.of(context).builLoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) => state.mapOrNull(
            otpRoute: (state) =>
                context.router.push(OtpScreenRoute(phone: state.phone))),
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  controller: controller,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      hintText: 'Номер телефона со знаком +'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () => BlocProvider.of<LoginBloc>(context)
                      .add(LoginEvent.phoneConfirmed(phone: controller.text)),
                  child: const Text('Продолжить'))
            ],
          );
        },
      ),
    );
  }
}
