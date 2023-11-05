// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:moki_tutor/data/dto/subject_dto.dart';

// part 'course_dto.g.dart';

// @JsonSerializable()
// class CourseDto {
//   @JsonKey(name: 'id')
//   final String id;

//   @JsonKey(name: 'name')
//   final String name;

//   @JsonKey(name: 'description')
//   final String description;

//   @JsonKey(name: 'subjects')
//   final String subjectsJson;

//   @JsonKey(name: 'createDate')
//   final DateTime date;

//   @JsonKey(name: 'price')
//   final String price;

//   @JsonKey(name: 'lang_id')
//   final String langId;

//   @JsonKey(name: 'duration')
//   final String duration;

//   CourseDto(
//       {required this.id,
//       required this.name,
//       required this.description,
//       required this.subjectsJson,
//       required this.date,
//       required this.price,
//       required this.langId,
//       required this.duration});

//   static CourseDto fromJson(Object json) =>
//       _$CourseDtoFromJson(json as Map<String, dynamic>);
// }
