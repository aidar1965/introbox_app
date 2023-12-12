// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../paginated_subjects_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedSubjectsDto _$PaginatedSubjectsDtoFromJson(
        Map<String, dynamic> json) =>
    PaginatedSubjectsDto(
      offset: json['offset'] as int,
      count: json['count'] as int,
      courses: (json['subjects'] as List<dynamic>)
          .map((e) => SubjectDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaginatedSubjectsDtoToJson(
        PaginatedSubjectsDto instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'count': instance.count,
      'subjects': instance.courses,
    };
