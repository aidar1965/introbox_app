// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../presentation_with_fragments_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PresentationWithFragmentsDto _$PresentationWithFragmentsDtoFromJson(
        Map<String, dynamic> json) =>
    PresentationWithFragmentsDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      createdAt: json['created_at'] as String,
      pdfFile: json['pdf_file'] as String?,
      fragmentDtoList: (json['fragments'] as List<dynamic>)
          .map((e) => PdfFragmentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PresentationWithFragmentsDtoToJson(
        PresentationWithFragmentsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'created_at': instance.createdAt,
      'pdf_file': instance.pdfFile,
      'fragments': instance.fragmentDtoList,
    };
