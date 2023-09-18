// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectDto _$SubjectDtoFromJson(Map<String, dynamic> json) => SubjectDto(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String?,
      recordsJson: (json['records'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      date: json['date'] as String,
      duration: json['duration'] as int?,
    );

Map<String, dynamic> _$SubjectDtoToJson(SubjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'records': instance.recordsJson,
      'date': instance.date,
      'duration': instance.duration,
    };
