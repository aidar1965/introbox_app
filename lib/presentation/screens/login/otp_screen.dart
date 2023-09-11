import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moki_tutor/domain/di/di.dart';

import 'package:pinput/pinput.dart';

import 'bloc/login_bloc.dart';

@RoutePage()
class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key, required this.phone}) : super(key: key);

  final String phone;

  @override
  Widget build(BuildContext context) {
    LoginBloc loginBloc = Di.of(context).builLoginBloc();
    return BlocProvider(
      create: (context) => loginBloc,
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state == LoginState.initial()) {
            return Scaffold(
                appBar: AppBar(),
                body: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Pinput(
                          length: 6,
                          onCompleted: (pin) {
                            loginBloc.add(LoginEvent.loginWithOtp(
                                phone: phone, otp: pin));
                          }),
                    ],
                  ),
                ));
          } else if (state == const LoginState.pending()) {
            return const Center(child: CircularProgressIndicator());
          } else
            return const SizedBox();
        },
      ),
    );
  }
}
