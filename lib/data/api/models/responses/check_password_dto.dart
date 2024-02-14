import 'package:json_annotation/json_annotation.dart';

part 'generated/check_password_dto.g.dart';

@JsonSerializable()
class CheckPasswordDto {
  CheckPasswordDto({
    required this.hasPassword,
  });

  @JsonKey(name: 'has_password')
  final bool hasPassword;

  static CheckPasswordDto fromJson(Object json) =>
      _$CheckPasswordDtoFromJson(json as Map<String, dynamic>);
}
