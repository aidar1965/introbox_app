// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      tutorId: json['tutor_id'] as String,
      firstname: json['firstname'] as String?,
      secondname: json['secondname'] as String?,
      lastname: json['lastname'] as String?,
      phone: json['phone'] as String,
      imageUrl: json['image_url'] as String?,
      about: json['about'] as String?,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'tutor_id': instance.tutorId,
      'firstname': instance.firstname,
      'secondname': instance.secondname,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'image_url': instance.imageUrl,
      'about': instance.about,
    };
