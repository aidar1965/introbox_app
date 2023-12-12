// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../course_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDto _$CourseDtoFromJson(Map<String, dynamic> json) => CourseDto(
      id: json['id'] as int,
      title: json['title'] as String?,
      description: json['description'] as String?,
      firstImage: json['first_image'] as String?,
      createdAt: json['created_at'] as String,
      lastUpdate: json['last_update'] as String?,
      price: (json['price'] as num).toDouble(),
      locale: json['lang'] as String,
      isPublished: json['is_published'] as bool,
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => SubjectDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CourseCategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CourseDtoToJson(CourseDto instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'first_image': instance.firstImage,
      'created_at': instance.createdAt,
      'last_update': instance.lastUpdate,
      'price': instance.price,
      'lang': instance.locale,
      'is_published': instance.isPublished,
      'subjects': instance.subjects,
      'categories': instance.categories,
    };
