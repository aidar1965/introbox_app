// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDto _$CourseDtoFromJson(Map<String, dynamic> json) => CourseDto(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      subjectsJson: json['subjects'] as String,
      date: DateTime.parse(json['createDate'] as String),
      price: json['price'] as String,
      langId: json['lang_id'] as String,
      duration: json['duration'] as String,
    );

Map<String, dynamic> _$CourseDtoToJson(CourseDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'subjects': instance.subjectsJson,
      'createDate': instance.date.toIso8601String(),
      'price': instance.price,
      'lang_id': instance.langId,
      'duration': instance.duration,
    };
