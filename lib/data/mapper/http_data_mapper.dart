import 'dart:convert';

import 'package:moki_tutor/data/dto/course_dto.dart';
import 'package:moki_tutor/data/dto/record_dto.dart';
import 'package:moki_tutor/data/dto/subject_dto.dart';
import 'package:moki_tutor/data/dto/user_dto.dart';

import '../../domain/models/course.dart';
import '../../domain/models/record.dart';
import '../../domain/models/subject.dart';
import '../../domain/models/user.dart';

class HttpDataMapper {
  User mapUser(UserDto dto) {
    return User(
        id: dto.tutorId,
        phone: dto.phone,
        firstName: dto.firstname,
        secondName: dto.secondname,
        lastName: dto.lastname,
        imageUrl: dto.imageUrl,
        about: dto.about);
  }

  Record mapRecord(RecordDto dto) {
    return Record(
        id: dto.id,
        title: dto.title,
        duration: int.parse(dto.duration),
        audioPath: dto.audioPath,
        imagePath: dto.imagePath ?? '',
        isPublished: true,
        date: dto.date);
  }

  Subject mapSubject(SubjectDto dto) {
    return Subject(
        id: dto.id,
        title: dto.title,
        description: dto.description,
        records: dto.recordsJson
            .map((e) => RecordDto.fromJson(e))
            .map(mapRecord)
            .toList(),
        date: DateTime.parse(dto.date),
        duration: int.parse(dto.duration));
  }

  List<Record> recordsFromJson(String dtoString) {
    Iterable<Object?> deserializedData =
        jsonDecode(dtoString) as Iterable<Object?>;

    return deserializedData
        .map((e) => RecordDto.fromJson(e!))
        .map(mapRecord)
        .toList();
  }

  Course mapCourse(CourseDto dto) {
    return Course(
        title: dto.name,
        description: dto.description,
        price: double.parse(dto.price),
        isPublished: true,
        id: dto.id,
        subjects: subjectsFromJson(dto.subjectsJson),
        lastUpdate: DateTime.now(),
        date: dto.date,
        lang: getLang(int.parse(dto.langId)),
        courseCategories: [],
        duration: int.parse(dto.duration));
  }

  List<Subject> subjectsFromJson(String dtoString) {
    Iterable<Object?> deserializedData =
        jsonDecode(dtoString) as Iterable<Object?>;

    return deserializedData
        .map((e) => SubjectDto.fromJson(e!))
        .map(mapSubject)
        .toList();
  }

  Lang getLang(int langId) {
    switch (langId) {
      case 1:
        return Lang.kz;
      case 2:
        return Lang.ru;
      case 3:
        return Lang.en;

      default:
        return Lang.kz;
    }
  }

  // Для отправки данных о рекордах на сервер при публикации

}
