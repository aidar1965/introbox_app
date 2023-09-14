import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'domain/constants.dart';
import 'domain/interfaces/i_auth_controller.dart';
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
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('kz', 'KZ'),
        Locale('en', 'US')
      ],
      path: 'assets/languages',
      fallbackLocale: const Locale('ru', 'RU'),
      child: Application()));
}

// assuing this is the root widget of your App
class Application extends StatefulWidget {
  const Application({
    Key? key,
  }) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late AppRouter appRouter;
  final IAuthController authController = getIt<IAuthController>();

  late bool _isAuthenticated;

  @override
  void initState() {
    super.initState();
    _isAuthenticated = authController.isAuthenticated;
    appRouter = AppRouter(isAuthenticated: _isAuthenticated);
    authController.addChangeListener(() {
      setState(() {
        _isAuthenticated = authController.isAuthenticated;
      });
      appRouter = AppRouter(isAuthenticated: _isAuthenticated);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Moki Tutor',
      theme: AppTheme.getTheme(),
    );
  }
}
