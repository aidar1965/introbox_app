import 'package:get_it/get_it.dart';
import '../../data/api/api.dart';
import '../../data/local_cache/local_cache.dart';
import '../interfaces/i_api.dart';

import '../interfaces/i_local_cache.dart';

import '../controllers/auth_controller.dart';
import '../interfaces/i_auth_controller.dart';

import '../interfaces/i_user_repository.dart';

import '../repositories/user_repository.dart';

final getIt = GetIt.instance;

void setup() async {
  getIt.registerFactory<ILocalCache>(() => LocalCache());
  getIt.registerSingleton<IAuthController>(AuthController());
  getIt.registerSingleton<IApi>(Api());
  getIt.registerSingleton<IUserRepository>(UserRepository()).init();

  print('-----------getit setup------------');
}
