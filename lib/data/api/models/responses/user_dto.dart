import 'package:json_annotation/json_annotation.dart';

part 'generated/user_dto.g.dart';

@JsonSerializable()
class UserDto {
  UserDto({
    required this.email,
    this.firstName,
    this.lastName,
  });

  @JsonKey(name: 'first_name') // "first_name":"nfgn"
  final String? firstName;

  @JsonKey(name: 'last_name') // "last_name":"dhdrthdtr"
  final String? lastName;

  @JsonKey(name: 'email')
  final String email;

  static UserDto fromJson(Object json) =>
      _$UserDtoFromJson(json as Map<String, dynamic>);
}
