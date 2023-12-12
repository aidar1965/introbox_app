// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../paginated_courses_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedCoursesDto _$PaginatedCoursesDtoFromJson(Map<String, dynamic> json) =>
    PaginatedCoursesDto(
      offset: json['offset'] as int,
      count: json['count'] as int,
      courses: (json['courses'] as List<dynamic>)
          .map((e) => CourseDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PaginatedCoursesDtoToJson(
        PaginatedCoursesDto instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'count': instance.count,
      'courses': instance.courses,
    };
