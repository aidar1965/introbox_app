import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:moki_tutor/domain/interfaces/i_auth_controller.dart';
import 'package:moki_tutor/domain/interfaces/i_user_repository.dart';

import 'domain/constants.dart';
import 'domain/locator/locator.dart';
import 'presentation/auto_router/app_router.dart';
import 'presentation/theme/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // Must add this line.

  await Constants.init();

  setup();

  await getIt.allReady();
  print(getIt<IUserRepository>().user?.lastName ?? 'No user or uninitialized');

  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('kz', 'KZ'),
        Locale('en', 'US')
      ],
      path: 'assets/languages',
      fallbackLocale: const Locale('ru', 'RU'),
      child: const Application()));
}

// assuing this is the root widget of your App
class Application extends StatelessWidget {
  const Application({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Moki Tutor',
      theme: AppTheme.getTheme(),
    );
  }
}
