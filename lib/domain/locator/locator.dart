import 'package:get_it/get_it.dart';
import 'package:moki_tutor/data/api/api.dart';
import 'package:moki_tutor/data/localDB/local_db.dart';
import 'package:moki_tutor/data/local_cache/local_cache.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_course_category_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_fragments_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_local_cache.dart';
import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
import 'package:moki_tutor/domain/repositories/categories_repository.dart';
import 'package:moki_tutor/domain/repositories/course_category_repository.dart';
import 'package:moki_tutor/domain/repositories/fragments_repository.dart';

import '../controllers/auth_controller.dart';
import '../interfaces/i_auth_controller.dart';
import '../interfaces/i_courses_repository.dart';
import '../interfaces/i_subject_category_repository.dart';
import '../interfaces/i_user_repository.dart';
import '../repositories/courses_repository.dart';
import '../repositories/subject_category_repository.dart';
import '../repositories/user_repository.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerFactory<IApi>(() => Api());
  getIt.registerFactoryAsync<ILocalDB>(() async {
    final db = LocalDB();
    await db.init().then((value) {
      getIt.registerSingleton<ICategoryRepository>(CategoriesRepository());

      getIt.registerSingleton<ICourseCategoryRepository>(
          CourseCategoryRepository());

      getIt.registerSingleton<ISubjectCategoryRepository>(
          SubjectCategoryRepository());

      getIt.registerSingleton<IFragmentsRepository>(FragmentsRepository());

      getIt.registerSingleton<ICoursesRepository>(CoursesRepository());

      getIt.registerSingleton<IFragmentsRepository>(FragmentsRepository());
    });
    return db;
  });
  getIt.registerFactory<ILocalCache>(() => LocalCache());
  getIt.registerSingletonAsync<IAuthController>(
      () async => AuthController().init().then((value) {
            getIt.registerSingletonAsync<IUserRepository>(
              () async {
                final userRepository = UserRepository();
                await userRepository.init();
                return userRepository;
              },
            );
            return value;
          }));
}
