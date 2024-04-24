import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:introbox/domain/interfaces/i_local_cache.dart';
import 'package:introbox/presentation/common/common_functions.dart';

import 'package:introbox/presentation/theme/theme_builder.dart';
import 'package:introbox/presentation/theme/theme_type.dart';

//import 'domain/constants.dart';
import 'domain/locator/locator.dart';
import 'presentation/auto_router/app_router.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'presentation/values/dynamic_palette.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // await Constants.init();

  setup();

  await getIt.allReady();

  final localeString = await getIt<ILocalCache>().getLocale();
  final locale = CommonFunctions.parseStringToLocale(localeString);

  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('kk', 'KZ'),
        Locale('en', 'US')
      ],
      path: 'assets/languages',
      startLocale: locale,
      fallbackLocale: const Locale('ru', 'RU'),
      child: Application(
        isLocaleSet: localeString != null,
      )));
  // setUrlStrategy(PathUrlStrategy());
}

// assuing this is the root widget of your App
class Application extends StatelessWidget {
  const Application({
    Key? key,
    required this.isLocaleSet,
  }) : super(key: key);

  final bool isLocaleSet;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: MyCustomScrollBehavior(),
      restorationScopeId: "Introbox", // <-- Add this line
      routerConfig: AppRouter(isLocaleSet).config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'IntroBox',
      theme: ThemeBuilder.getTheme(ThemeTypes.light, DynamicPalette.light()),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}
