// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      secondName: json['second_name'] as String?,
      photo: json['photo'] as String?,
      about: json['about'] as String?,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'second_name': instance.secondName,
      'email': instance.email,
      'about': instance.about,
      'photo': instance.photo,
    };
