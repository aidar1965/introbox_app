import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  @JsonKey(name: 'tutor_id')
  final String tutorId;

  @JsonKey(name: 'firstname')
  final String? firstname;

  @JsonKey(name: 'secondname')
  final String? secondname;

  @JsonKey(name: 'lastname')
  final String? lastname;

  @JsonKey(name: 'phone')
  final String phone;

  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @JsonKey(name: 'about')
  final String? about;

  UserDto({
    required this.tutorId,
    this.firstname,
    this.secondname,
    this.lastname,
    required this.phone,
    this.imageUrl,
    this.about,
  });

  static UserDto fromJson(Object json) =>
      _$UserDtoFromJson(json as Map<String, dynamic>);
}
