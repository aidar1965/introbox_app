// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../presentation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PresentationDto _$PresentationDtoFromJson(Map<String, dynamic> json) =>
    PresentationDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      firstImage: json['first_image'] as String,
      createdAt: json['created_at'] as String,
      duration: json['duration'] as int?,
      isPublished: json['is_published'] as bool,
      hasPassword: json['has_password'] as bool,
      pdfFile: json['pdf_file'] as String?,
      isAudio: json['is_audio'] as bool,
      isPublic: json['is_public'] as bool,
      includePdf: json['include_pdf'] as bool,
      freeMode: json['free_mode'] as bool,
      links: json['links'] as String?,
    );

Map<String, dynamic> _$PresentationDtoToJson(PresentationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'pdf_file': instance.pdfFile,
      'first_image': instance.firstImage,
      'created_at': instance.createdAt,
      'duration': instance.duration,
      'is_audio': instance.isAudio,
      'is_public': instance.isPublic,
      'has_password': instance.hasPassword,
      'is_published': instance.isPublished,
      'include_pdf': instance.includePdf,
      'free_mode': instance.freeMode,
      'links': instance.links,
    };
