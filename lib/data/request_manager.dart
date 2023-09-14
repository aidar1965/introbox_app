// import 'package:moki_tutor/domain/interfaces/i_api.dart';
// import 'package:moki_tutor/domain/interfaces/i_category_repository.dart';
// import 'package:moki_tutor/domain/interfaces/i_local_db.dart';
// import 'package:moki_tutor/domain/interfaces/i_fragments_repository.dart';
// import 'package:moki_tutor/domain/interfaces/i_request_manager.dart';

// import '../domain/models/course.dart';
// import '../domain/models/fragment.dart';
// import '../domain/models/fragment_category.dart';

// class RequestManager implements IRequestManager {
//   RequestManager({
//     required this.api,
//     required this.db,
//     required this.categoryRepository,
//   });
//   final ILocalDB db;
//   final IApi api;
//   final ICategoryRepository categoryRepository;

//   @override
//   void createFragment(Fragment record) {
//     db.createFragment(record);
//   }

//   @override
//   Future<void> updateFragment(
//       {required int id,
//       required String title,
//       String? description,
//       String? imagePath,
//       required String audioPath}) async {}

//   @override
//   Future<void> deleteFragment({
//     required int id,
//   }) async {}

//   @override
//   Future<List<FragmentCategory>> getCategories() async {
//     List<FragmentCategory> categories = await db.getCategories();
//     return categories;
//   }

//   @override
//   Future<List<Fragment>> getFragments() async {
//     List<Fragment> records = await db.getFragments();
//     return records;
//   }

//   @override
//   void addCategory(FragmentCategory category) {
//     db.addCategory(category);
//   }

//   @override
//   Future<void> editCategory(
//       {required String name, required FragmentCategory category}) async {}

//   @override
//   Future<void> deleteCategory(FragmentCategory category) async {}

//   @override
//   void saveCourse(Course course) {
//     db.saveCourse(course);
//   }

//   @override
//   Future<void> publishCourse(Course course) async {
//     await api.publishCourse(course: course);
//   }

//   @override
//   Future<List<Course>> getCourses() async {
//     List<Course> courses = await db.getCourses();
//     return courses;
//   }
// }
