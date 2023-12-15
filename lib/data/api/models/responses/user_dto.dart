import 'package:json_annotation/json_annotation.dart';

part 'generated/user_dto.g.dart';

@JsonSerializable()
class UserDto {
  UserDto({
    required this.email,
    required this.firstName,
    required this.lastName,
    this.secondName,
    this.photo,
    this.about,
  });

  @JsonKey(name: 'first_name') // "first_name":"nfgn"
  final String firstName;

  @JsonKey(name: 'last_name') // "last_name":"dhdrthdtr"
  final String lastName;

  @JsonKey(name: 'second_name') // "last_name":"dhdrthdtr"
  final String? secondName;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'about') // "last_name":"dhdrthdtr"
  final String? about;

  @JsonKey(name: 'photo') // "last_name":"dhdrthdtr"
  final String? photo;

  static UserDto fromJson(Object json) =>
      _$UserDtoFromJson(json as Map<String, dynamic>);
}
