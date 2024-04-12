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
      channelDto: ChannelDto.fromJson(json['channel'] as Map<String, dynamic>),
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => PresentationLinkDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstImage: json['first_image'] as String?,
    );

Map<String, dynamic> _$PresentationWithFragmentsDtoToJson(
        PresentationWithFragmentsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'first_image': instance.firstImage,
      'created_at': instance.createdAt,
      'pdf_file': instance.pdfFile,
      'channel': instance.channelDto,
      'fragments': instance.fragmentDtoList,
      'links': instance.links,
    };
