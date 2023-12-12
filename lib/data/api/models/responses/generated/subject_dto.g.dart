// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../subject_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectDto _$SubjectDtoFromJson(Map<String, dynamic> json) => SubjectDto(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String?,
      firstImage: json['first_image'] as String?,
      createdAt: json['created_at'] as String,
      duration: json['duration'] as int,
      countUncompleted: json['count_uncompleted'] as int,
    );

Map<String, dynamic> _$SubjectDtoToJson(SubjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'first_image': instance.firstImage,
      'created_at': instance.createdAt,
      'duration': instance.duration,
      'count_uncompleted': instance.countUncompleted,
    };
