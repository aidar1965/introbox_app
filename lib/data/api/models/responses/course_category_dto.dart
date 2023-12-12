import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/course_category_dto.g.dart';

@JsonSerializable()
class CourseCategoryDto {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'name')
  final String name;
  CourseCategoryDto({
    required this.id,
    required this.name,
  });

  static CourseCategoryDto fromJson(Object json) =>
      _$CourseCategoryDtoFromJson(json as Map<String, dynamic>);
}
