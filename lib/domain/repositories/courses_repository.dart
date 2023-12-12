import 'package:flutter/cupertino.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/interfaces/i_courses_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';
import 'package:moki_tutor/domain/models/course.dart';

import '../interfaces/i_local_db.dart';
import '../locator/locator.dart';

class CoursesRepository extends ChangeNotifier implements ICoursesRepository {
  final ILocalDB db;
  final IApi api = getIt<IApi>();
  final ISubjectsRepository subjectsRepository = getIt<ISubjectsRepository>();

  CoursesRepository(this.db) {
    init();
    subjectsRepository.addChangeListener(() {
      init();
    });
  }
  List<Course>? _courses;

  @override
  Future<CoursesRepository> init() async {
    _courses = await db.getCourses();
    notifyListeners();
    return this;
  }

  @override
  Future<int> addCourse(Course course) async {
    final id = await db.saveCourse(course);
    getCourses();
    return id;
  }

  @override
  List<Course> get courses => _courses ?? [];

  @override
  Future<int> editCourse(Course course) async {
    // TODO: implement editCourse
    throw UnimplementedError();
  }

  @override
  Future<int> removeCourse(Course course) async {
    throw UnimplementedError();
  }

  @override
  Future<void> getCourses() async {
    _courses = await db.getCourses();
    notifyListeners();
  }

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  Future<void> publishCourse(Course course) async {
    //  await api.publishCourse(
    //      bodyMap: httpRequestMapper.publishCourseBodyData(course: course));
  }

  @override
  Future<List<Course>?>? getPublishedCourses() async {
    List<Course>? courses = await api.getPublishedCourses();
    return courses;
  }
}

// Future<void> _createZip(Course course) async {
//   final archive = Archive();
//   final zipEncoder = ZipEncoder();

//   bool fileExists =
//       await File('${Constants.fullTempFolder}${course.id}.zip').exists();
//   if (fileExists) {
//     await File('${Constants.fullTempFolder}${course.id}.zip').delete();
//   }
//   for (var subject in course.subjects) {
//     if (subject.records?.isNotEmpty ?? false) {
//       for (var record in subject.records!) {
//         var file = File(record.audioPath!);
//         var bytes = file.readAsBytesSync();
//         var name = basename(file.path);
//         var archiveFile = ArchiveFile(name, bytes.length, bytes);
//         archive.addFile(archiveFile);
//         if (record.images != null) {
//           for (var element in record.images!.keys) {
//             file = File(element);
//             bytes = file.readAsBytesSync();
//             name = basename(file.path);
//             archiveFile = ArchiveFile(name, bytes.length, bytes);
//             archive.addFile(archiveFile);
//           }
//         }
//       }
//       final encodedArchive = zipEncoder.encode(archive);
//       if (encodedArchive == null) return;
//       await File('${Constants.fullTempFolder}${course.id}.zip')
//           .writeAsBytes(encodedArchive);
//     }
   

