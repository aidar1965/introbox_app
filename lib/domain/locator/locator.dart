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
import '../interfaces/i_subject_repository.dart';
import '../interfaces/i_user_repository.dart';
import '../repositories/courses_repository.dart';
import '../repositories/subject_category_repository.dart';
import '../repositories/subjects_repository.dart';
import '../repositories/user_repository.dart';

final getIt = GetIt.instance;

void setup() async {
  getIt.registerSingleton<IApi>(Api());
  getIt.registerFactory<ILocalCache>(() => LocalCache());
  getIt.registerSingleton<IUserRepository>(UserRepository());
  getIt.registerSingleton<IAuthController>(AuthController());

  getIt.registerSingletonAsync<ILocalDB>(
    () async => await LocalDB().init().then((value) {
      getIt.registerSingleton<ICategoryRepository>(CategoriesRepository(value));
      getIt.registerSingleton<ICourseCategoryRepository>(
          CourseCategoryRepository(value));
      getIt.registerSingleton<IFragmentsRepository>(FragmentsRepository(value));
      getIt.registerSingleton<ISubjectCategoryRepository>(
          SubjectCategoryRepository(value));
      getIt.registerSingleton<ISubjectsRepository>(SubjectsRepository(value));
      getIt.registerSingleton<ICoursesRepository>(CoursesRepository(value));

      return value;
    }),
  );
}
