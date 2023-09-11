// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordDto _$RecordDtoFromJson(Map<String, dynamic> json) => RecordDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      duration: json['duration'] as String,
      audioPath: json['audioPath'] as String,
      imagePath: json['imagePath'] as String?,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$RecordDtoToJson(RecordDto instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'duration': instance.duration,
      'audioPath': instance.audioPath,
      'imagePath': instance.imagePath,
      'date': instance.date.toIso8601String(),
    };
