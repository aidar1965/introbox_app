import 'package:json_annotation/json_annotation.dart';

part 'generated/fragment_category_dto.g.dart';

@JsonSerializable()
class FragmentCategoryDto {
  FragmentCategoryDto({
    required this.id,
    required this.name,
  });

  @JsonKey(name: 'id') // "first_name":"nfgn"
  final int id;

  @JsonKey(name: 'name') // "last_name":"dhdrthdtr"
  final String name;

  static FragmentCategoryDto fromJson(Object json) =>
      _$FragmentCategoryDtoFromJson(json as Map<String, dynamic>);
}
