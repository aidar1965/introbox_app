// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyDto _$CompanyDtoFromJson(Map<String, dynamic> json) => CompanyDto(
      id: json['id'] as String,
      name: json['name'] as String,
      website: json['website'] as String?,
      description: json['description'] as String?,
      isConfirmed: json['is_confirmed'] as bool,
    );

Map<String, dynamic> _$CompanyDtoToJson(CompanyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'website': instance.website,
      'description': instance.description,
      'is_confirmed': instance.isConfirmed,
    };
