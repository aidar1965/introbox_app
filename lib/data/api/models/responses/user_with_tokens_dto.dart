import 'package:json_annotation/json_annotation.dart';

part 'generated/user_with_tokens_dto.g.dart';

@JsonSerializable()
class UserWithTokensDto {
  UserWithTokensDto({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.accessToken,
    required this.refreshToken,
  });

  @JsonKey(name: 'first_name') // "first_name":"nfgn"
  final String firstName;

  @JsonKey(name: 'last_name') // "last_name":"dhdrthdtr"
  final String lastName;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'access')
  final String accessToken;

  @JsonKey(name: 'refresh')
  final String refreshToken;

  static UserWithTokensDto fromJson(Object json) =>
      _$UserWithTokensDtoFromJson(json as Map<String, dynamic>);
}
