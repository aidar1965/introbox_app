import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:moki_tutor/presentation/theme/theme_builder.dart';
import 'package:moki_tutor/presentation/theme/theme_type.dart';

//import 'domain/constants.dart';
import 'domain/locator/locator.dart';
import 'presentation/auto_router/app_router.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'presentation/values/dynamic_palette.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // await Constants.init();

  setup();

  await getIt.allReady();

  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('kz', 'KZ'),
        Locale('en', 'US')
      ],
      path: 'assets/languages',
      fallbackLocale: const Locale('ru', 'RU'),
      child: const Application()));
  setUrlStrategy(PathUrlStrategy());
}

// assuing this is the root widget of your App
class Application extends StatelessWidget {
  const Application({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      restorationScopeId: "Test", // <-- Add this line
      routerConfig: AppRouter().config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'IntroBox Studio',
      theme: ThemeBuilder.getTheme(ThemeTypes.light, DynamicPalette.light()),
    );
  }
}
