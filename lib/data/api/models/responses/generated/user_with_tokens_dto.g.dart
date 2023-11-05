// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_with_tokens_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWithTokensDto _$UserWithTokensDtoFromJson(Map<String, dynamic> json) =>
    UserWithTokensDto(
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      accessToken: json['access'] as String,
      refreshToken: json['refresh'] as String,
    );

Map<String, dynamic> _$UserWithTokensDtoToJson(UserWithTokensDto instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'access': instance.accessToken,
      'refresh': instance.refreshToken,
    };
