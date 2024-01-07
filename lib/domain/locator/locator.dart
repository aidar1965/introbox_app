import 'package:get_it/get_it.dart';
import 'package:moki_tutor/data/api/api.dart';
import 'package:moki_tutor/data/local_cache/local_cache.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';

import 'package:moki_tutor/domain/interfaces/i_local_cache.dart';

import '../controllers/auth_controller.dart';
import '../interfaces/i_auth_controller.dart';

import '../interfaces/i_user_repository.dart';

import '../repositories/user_repository.dart';

final getIt = GetIt.instance;

void setup() async {
  getIt.registerSingleton<IApi>(Api());
  getIt.registerFactory<ILocalCache>(() => LocalCache());
  getIt.registerSingleton<IUserRepository>(UserRepository()).init();
  getIt.registerSingleton<IAuthController>(AuthController());
}
