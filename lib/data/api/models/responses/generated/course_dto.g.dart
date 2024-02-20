// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../course_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDto _$CourseDtoFromJson(Map<String, dynamic> json) => CourseDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      image: json['image'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String?,
      price: (json['price'] as num).toDouble(),
      locale: json['lang'] as String?,
      isPublished: json['is_published'] as bool,
      presentations: (json['presentations'] as List<dynamic>?)
          ?.map((e) => PresentationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      channel: ChannelDto.fromJson(json['channel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseDtoToJson(CourseDto instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'price': instance.price,
      'lang': instance.locale,
      'is_published': instance.isPublished,
      'presentations': instance.presentations,
      'channel': instance.channel,
    };
