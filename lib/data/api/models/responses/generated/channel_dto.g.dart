// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../channel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelDto _$ChannelDtoFromJson(Map<String, dynamic> json) => ChannelDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      channelType: json['channel_type_id'] as int,
      companyDto: json['company'] == null
          ? null
          : CompanyDto.fromJson(json['company'] as Map<String, dynamic>),
      isPublic: json['is_public'] as bool,
    );

Map<String, dynamic> _$ChannelDtoToJson(ChannelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'channel_type_id': instance.channelType,
      'is_public': instance.isPublic,
      'company': instance.companyDto,
    };
