import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:dio/dio.dart';
import 'package:nanoid/nanoid.dart';
import 'package:path/path.dart';
import 'package:http_parser/src/media_type.dart';

import '../../domain/constants.dart';
import '../../domain/models/course.dart';
import '../../domain/models/record.dart';
import '../../domain/models/subject.dart';
import '../../domain/models/user.dart';

class HttpRequestMapper {
  Map<String, Object> otpReequestBodyData(
      {required String phone, required String lang}) {
    var nanoId = nanoid(12);
    return {'phone': phone, 'lang': lang, 'tutor_id': nanoId};
  }

  Map<String, Object> loginBodyData(
      {required String otp, required String phone}) {
    return {
      'phone': phone,
      'otp': otp,
    };
  }

  Map<String, Object?> updateUserBodyData({required User user}) {
    return {
      'firstname': user.firstName,
      'secondname': user.secondName,
      'lastname': user.lastName!,
      'about': user.about,
    };
  }

  Map<String, Object?> publishCourseBodyData({required Course course}) {
    return {
      'course_id': course.id,
      'name': course.title,
      'description': course.description,
      'price': course.price,
      'images': _images(course),
      'lang': 'ru', // потом брать из формы
      'subjects': course.subjects.map((e) => e.toJson()).toList(),
      'duration': course.duration,
      'createDate': course.date.toString(),
      'zip': MultipartFileExtended.fromFileSync(
          '${Constants.fullTempFolder}${course.id}.zip')
    };
  }

  String _images(Course course) {
    List<Map<String, dynamic>> imageJsons = [];

    for (var subject in course.subjects) {
      for (var record in subject.records) {
        if (record.images != null) {
          record.images!.forEach((key, value) {
            Map<String, dynamic> jsonItem = {
              'image_path': key,
              'second': value,
              'record_id': record.id
            };
            imageJsons.add(jsonItem);
          });
        }
      }
    }
    log(json.encode(imageJsons));
    return json.encode(imageJsons);
  }

  Map<String, Object> uploadUserImageBodyData({required File image}) {
    String fileName = image.path.split('\\').last;
    return {
      'image':
          MultipartFileExtended.fromFileSync(image.path, filename: fileName),
    };
  }
}

String recordsToJson(List<Record> records) {
  final List<Map<String, dynamic>> recordMaps = [];
  for (var record in records) {
    final Map<String, dynamic> recordMap = {};
    recordMap['id'] = record.id;
    recordMap['title'] = record.title;
    recordMap['description'] = record.description;
    recordMap['duration'] = record.duration;
    recordMap['audio'] = record.audioPath.split('\\').last;
    recordMap['image'] = record.imagePath.split('\\').last;
    recordMap['createDate'] = record.date.toString();
    recordMaps.add(recordMap);
  }
  return jsonEncode(recordMaps);
}

String subjectsToJson(List<Subject> subjects) {
  final List<Map<String, dynamic>> subjectMaps = [];
  for (var subject in subjects) {
    final Map<String, dynamic> subjectMap = {};
    subjectMap['id'] = subject.id;
    subjectMap['title'] = subject.title;
    subjectMap['description'] = subject.description;
    subjectMap['records'] = recordsToJson(subject.records);
    subjectMap['duration'] = subject.duration;
    subjectMap['createDate'] = subject.date.toString();
    subjectMaps.add(subjectMap);
  }
  return jsonEncode(subjectMaps);
}

class MultipartFileExtended extends MultipartFile {
  final String filePath; //this one!

  MultipartFileExtended(
    Stream<List<int>> stream,
    length, {
    filename,
    required this.filePath,
    contentType,
  }) : super(stream, length, filename: filename, contentType: contentType);

  static MultipartFileExtended fromFileSync(
    String filePath, {
    String? filename,
    MediaType? contentType,
  }) =>
      multipartFileFromPathSync(filePath,
          filename: filename, contentType: contentType);
}

MultipartFileExtended multipartFileFromPathSync(
  String filePath, {
  String? filename,
  MediaType? contentType,
}) {
  filename ??= basename(filePath);
  var file = File(filePath);
  var length = file.lengthSync();
  var stream = file.openRead();
  return MultipartFileExtended(
    stream,
    length,
    filename: filename,
    contentType: contentType,
    filePath: filePath,
  );
}
