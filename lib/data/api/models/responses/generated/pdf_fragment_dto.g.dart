// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../pdf_fragment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PdfFragmentDto _$PdfFragmentDtoFromJson(Map<String, dynamic> json) =>
    PdfFragmentDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      imagePath: json['image_path'] as String,
      isLandscape: json['is_landscape'] as bool,
      audioPath: json['audio_path'] as String?,
      duration: json['duration'] as int?,
      displayOrder: json['display_order'] as int,
    );

Map<String, dynamic> _$PdfFragmentDtoToJson(PdfFragmentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'image_path': instance.imagePath,
      'is_landscape': instance.isLandscape,
      'audio_path': instance.audioPath,
      'display_order': instance.displayOrder,
    };
