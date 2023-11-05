import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../../domain/models/course_category.dart';
import '../../domain/models/fragment.dart';
import '../../domain/models/subject.dart';
import '../../domain/models/subject_category.dart';

import '../../domain/interfaces/i_local_db.dart';
import '../../domain/models/course.dart';
import '../../domain/models/fragment_category.dart';
import '../../domain/models/user.dart';
import '../mapper/local_db_mapper.dart';
import 'db_helper.dart';

class LocalDB implements ILocalDB {
  Database? _db;

  final mapper = LocalDbMapper();

  final dbHelper = DbHelper();
  @override
  Future<LocalDB> init() async {
    _db = await dbHelper.database;
    return this;
  }

  @override
  Future<int> addCategory(String name) async {
    return 1;
  }

  @override
  Future<int> addCourseCategory(String name) async {
    return 1;
  }

  @override
  Future<int> addFragment(
      {required String title,
      String? description,
      String? imagePath,
      required int? duration,
      required String? audioPath,
      required DateTime date,
      String? images,
      List<FragmentCategory>? selectedCategories}) async {
    return 1;
  }

  @override
  Future<int?> addPdfFragment({
    required String title,
    String? description,
    String? imagePath,
    int? duration,
    String? audioPath,
    required DateTime date,
  }) async {
    final id = await _db?.rawInsert(dbHelper.addPdfFragmentQuery, [
      title,
      description,
      audioPath,
      imagePath,
      date.toString(),
      duration,
    ]);

    print(id);
    return id;
  }

  @override
  Future<int> addSubject(
      {required String title,
      String? description,
      List<Fragment>? records,
      required DateTime date,
      List<SubjectCategory>? subjectCategories,
      int? duration}) async {
    return 1;
  }

  @override
  Future<int> addSubjectCategory(String name) async {
    return 1;
  }

  @override
  Future<int> deleteCategory(FragmentCategory category) async {
    return 1;
  }

  @override
  Future<int> deleteCourseCategory(CourseCategory category) async {
    return 1;
  }

  @override
  Future<int> deleteFragment({required int id}) async {
    return 1;
  }

  @override
  Future<int> deleteSubjectCategory(SubjectCategory subjectCategory) async {
    return 1;
  }

  @override
  Future<int> editCategory({required FragmentCategory category}) async {
    return 1;
  }

  @override
  Future<int> editCourseCategory(String name) async {
    return 1;
  }

  @override
  Future<int> editSubjectCategory(
      {required SubjectCategory subjectCategory}) async {
    return 1;
  }

  @override
  Future<List<FragmentCategory>> getCategories() async {
    return <FragmentCategory>[];
  }

  @override
  Future<List<CourseCategory>> getCourseCategories() async {
    return <CourseCategory>[];
  }

  @override
  Future<List<Course>> getCourses() async {
    return [];
  }

  @override
  Future<List<Fragment>> getFragments() async {
    return [];
  }

  @override
  User? getLocalUser() {
    return null;
  }

  @override
  Future<List<SubjectCategory>> getSubjectCategories() async {
    return [];
  }

  @override
  Future<List<Subject>> getSubjects() async {
    final rows = await _db!.query('subject', limit: 1);
    if (rows.isEmpty) return [];
    final List<Map<String, Object?>>? maps = await _db?.rawQuery('''SELECT
    s.*,
    json_group_array(json_object('id', f.id, 'title', f.title,  'description', 
    f.description, 'image_path', f.image_path,
    'duration', f.duration, 'audio_path', f.audio_path, 'created_at', f.created_at,
    'updated_at', f.updated_at, 'remote_id', f.remote_id)) AS fragments
    FROM subject AS s
    LEFT JOIN subject_fragment AS sf ON s.id = sf.subject_id
    LEFT JOIN fragment AS f ON sf.fragment_id = f.id
    ''');

    print(maps);

    final test = await _db?.rawQuery('SELECT * FROM fragment');
    print(test);

    return List.generate(
      maps?.length ?? 0,
      (index) => mapper.mapSubject(maps!.elementAt(index)),
    );
  }

  @override
  void removeLocalUser() {
    // TODO: implement removeLocalUser
  }

  @override
  Future<int> saveCourse(Course course) async {
    return 1;
  }

  @override
  Future<int> saveUserLocally(User user) {
    // TODO: implement saveUserLocally
    throw UnimplementedError();
  }

  @override
  Future<int> updateCourse(Course course) {
    // TODO: implement updateCourse
    throw UnimplementedError();
  }

  @override
  Future<int> updateFragment({required Fragment record}) {
    // TODO: implement updateFragment
    throw UnimplementedError();
  }

  @override
  Future<int> updateSubject(Subject subject) {
    // TODO: implement updateSubject
    throw UnimplementedError();
  }

  @override
  Future<void> addFragmentToSubject(
      {required subjectId, required fragmentId}) async {
    await _db?.rawInsert(dbHelper.addFragmentSubject, [subjectId, fragmentId]);
  }

  @override
  Future<int?> addPdfSubject(
      {required String title,
      String? description,
      required String pdfFile,
      required DateTime date,
      int? duration}) async {
    return await _db?.rawInsert(dbHelper.addPdfSubjectQuery,
        [title, description, pdfFile, DateTime.now().toString(), duration]);
  }

  Future<void> addFragmentSubject(
      {required int subjectId, required int fragmentId}) async {
    await _db?.rawInsert(dbHelper.addFragmentSubject, [subjectId, fragmentId]);
  }
}
