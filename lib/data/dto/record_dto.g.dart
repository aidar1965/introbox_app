// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FragmentDto _$FragmentDtoFromJson(Map<String, dynamic> json) => FragmentDto(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      duration: json['duration'] as String,
      audioPath: json['audioPath'] as String,
      imagePath: json['imagePath'] as String?,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$FragmentDtoToJson(FragmentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'audioPath': instance.audioPath,
      'imagePath': instance.imagePath,
      'date': instance.date.toIso8601String(),
    };
