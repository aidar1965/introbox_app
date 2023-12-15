import 'package:json_annotation/json_annotation.dart';

part 'generated/subject_category_dto.g.dart';

@JsonSerializable()
class SubjectCategoryDto {
  SubjectCategoryDto({
    required this.id,
    required this.name,
  });

  @JsonKey(name: 'id') // "first_name":"nfgn"
  final int id;

  @JsonKey(name: 'name') // "last_name":"dhdrthdtr"
  final String name;

  static SubjectCategoryDto fromJson(Object json) =>
      _$SubjectCategoryDtoFromJson(json as Map<String, dynamic>);
}
