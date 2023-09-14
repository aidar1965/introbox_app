import 'dart:io';

import 'package:archive/archive.dart';
import 'package:flutter/cupertino.dart';
import 'package:moki_tutor/data/mapper/http_request_mapper.dart';
import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/interfaces/i_courses_repository.dart';
import 'package:moki_tutor/domain/interfaces/i_subject_repository.dart';
import 'package:moki_tutor/domain/models/course.dart';
import 'package:path/path.dart';

import '../constants.dart';
import '../interfaces/i_local_db.dart';
import '../locator/locator.dart';

class CoursesRepository extends ChangeNotifier implements ICoursesRepository {
  final ILocalDB db = getIt<ILocalDB>();
  final IApi api = getIt<IApi>();
  final ISubjectsRepository subjectsRepository = getIt<ISubjectsRepository>();

  final httpRequestMapper = HttpRequestMapper();
  CoursesRepository() {
    init();
    subjectsRepository.addChangeListener(() {
      init();
    });
  }
  List<Course>? _courses;

  @override
  void init() {
    _courses = db.getCourses();
    notifyListeners();
  }

  @override
  void addCourse(Course course) {
    db.saveCourse(course);
    getCourses();
  }

  @override
  List<Course> get courses => _courses ?? [];

  @override
  void editCourse(Course course) {
    // TODO: implement editCourse
    throw UnimplementedError();
  }

  @override
  void removeCourse(Course course) {
    throw UnimplementedError();
  }

  @override
  void getCourses() {
    _courses = db.getCourses();
    notifyListeners();
  }

  @override
  void addChangeListener(Function() listener) => addListener(listener);

  @override
  void removeChangeListener(Function() listener) => removeListener(listener);

  @override
  Future<void> publishCourse(Course course) async {
    await _createZip(course);
    //  await api.publishCourse(
    //      bodyMap: httpRequestMapper.publishCourseBodyData(course: course));
  }

  @override
  Future<List<Course>?>? getPublishedCourses() async {
    List<Course>? courses = await api.getPublishedCourses();
    return courses;
  }
}

Future<void> _createZip(Course course) async {
  final archive = Archive();
  final zipEncoder = ZipEncoder();

  bool fileExists =
      await File('${Constants.fullTempFolder}${course.id}.zip').exists();
  if (fileExists) {
    await File('${Constants.fullTempFolder}${course.id}.zip').delete();
  }
  for (var subject in course.subjects) {
    for (var record in subject.records) {
      var file = File(record.audioPath);
      var bytes = file.readAsBytesSync();
      var name = basename(file.path);
      var archiveFile = ArchiveFile(name, bytes.length, bytes);
      archive.addFile(archiveFile);
      if (record.images != null) {
        for (var element in record.images!.keys) {
          file = File(element);
          bytes = file.readAsBytesSync();
          name = basename(file.path);
          archiveFile = ArchiveFile(name, bytes.length, bytes);
          archive.addFile(archiveFile);
        }
      }
    }
    final encodedArchive = zipEncoder.encode(archive);
    if (encodedArchive == null) return;
    await File('${Constants.fullTempFolder}${course.id}.zip')
        .writeAsBytes(encodedArchive);
  }
}
