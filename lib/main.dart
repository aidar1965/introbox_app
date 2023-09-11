import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:moki_tutor/data/localDB/hive_db.dart';
import 'package:moki_tutor/domain/di/environment.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/presentation/auto_router/app_router.gr.dart';

import 'domain/constants.dart';
import 'domain/di/di.dart';
import 'presentation/theme/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // Must add this line.

  await Constants.init();
  ILocalDB db = HiveDB();
  await db.init();
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('kz', 'KZ'),
        Locale('en', 'US')
      ],
      path: 'assets/languages',
      fallbackLocale: const Locale('ru', 'RU'),
      child: Application(
        db: db,
      )));
}

// assuing this is the root widget of your App
class Application extends StatelessWidget {
  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();
  final ILocalDB db;

  Application({Key? key, required this.db}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Di(
      environment: Environment.buildEnvironment(db),
      child: MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'Moki Tutor',
        theme: AppTheme.getTheme(),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
