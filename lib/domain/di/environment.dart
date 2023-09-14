// import 'package:moki_tutor/data/api/api.dart';
// import 'package:moki_tutor/data/api/http_client/http_client.dart';
// import 'package:moki_tutor/data/localDB/local_db.dart';
// import 'package:moki_tutor/data/request_manager.dart';
// import 'package:moki_tutor/domain/interfaces/i_api.dart';
// import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
// import 'package:moki_tutor/domain/interfaces/i_course_category_repository.dart';
// import 'package:moki_tutor/domain/interfaces/i_courses_repository.dart';
// import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
// import 'package:moki_tutor/domain/interfaces/i_fragments_repository.dart';
// import 'package:moki_tutor/domain/interfaces/i_request_manager.dart';
// import 'package:moki_tutor/domain/interfaces/i_subject_category_repository.dart';
// import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';
// import 'package:moki_tutor/domain/interfaces/i_user_repository.dart';
// import 'package:moki_tutor/domain/repositories/categories_repository.dart';
// import 'package:moki_tutor/domain/repositories/course_category_repository.dart';
// import 'package:moki_tutor/domain/repositories/courses_repository.dart';
// import 'package:moki_tutor/domain/repositories/fragments_repository.dart';
// import 'package:moki_tutor/domain/repositories/subject_category_repository.dart';
// import 'package:moki_tutor/domain/repositories/subjects_repository.dart';
// import 'package:moki_tutor/domain/repositories/user_repository.dart';

// class Environment {
//   static Map<Type, Object> buildEnvironment(ILocalDB db) {
//     final Map<Type, Object> environment = {};

//     //final ILocalDB db;

//     final IApi api = Api();

//     final IUserRepository userRepository = UserRepository(db: db, api: api);

//     final ICategoryRepository categoryRepository = CategoriesRepository(db);

//     final IRequestManager requestManager = RequestManager(
//         db: db, api: api, categoryRepository: categoryRepository);

//     final ISubjectCategoryRepository subjectCategoryRepository =
//         SubjectCategoryRepository(db);

//     final IFragmentsRepository recordsRepository =
//         FragmentsRepository(db: db, categoryRepository: categoryRepository);
//     final ISubjectsRepository subjectsRepository = SubjectsRepository(
//         db: db,
//         subjectCategoryRepository: subjectCategoryRepository,
//         recordsRepository: recordsRepository);
//     final ICourseCategoryRepository courseCategoryRepository =
//         CourseCategoryRepository(db: db);
//     final ICoursesRepository coursesRepository = CoursesRepository(
//         db: db, api: api, subjectsRepository: subjectsRepository);

//     environment[IRequestManager] = requestManager;
//     environment[ICategoryRepository] = categoryRepository;
//     environment[ICoursesRepository] = coursesRepository;
//     environment[IUserRepository] = userRepository;
//     environment[ISubjectsRepository] = subjectsRepository;
//     environment[IFragmentsRepository] = recordsRepository;
//     environment[ISubjectCategoryRepository] = subjectCategoryRepository;
//     environment[ICourseCategoryRepository] = courseCategoryRepository;
//     environment[IApi] = api;

//     return environment;
//   }
// }
