import 'package:json_annotation/json_annotation.dart';

part 'generated/company_dto.g.dart';

@JsonSerializable()
class CompanyDto {
  CompanyDto(
      {required this.id,
      required this.name,
      this.website,
      this.description,
      required this.isConfirmed});

  @JsonKey(name: 'id') // "first_name":"nfgn"
  final String id;

  @JsonKey(name: 'name') // "first_name":"nfgn"
  final String name;

  @JsonKey(name: 'website') // "last_name":"dhdrthdtr"
  final String? website;

  @JsonKey(name: 'description') // "last_name":"dhdrthdtr"
  final String? description;

  @JsonKey(name: 'is_confirmed') // "last_name":"dhdrthdtr"
  final bool isConfirmed;

  static CompanyDto fromJson(Object json) =>
      _$CompanyDtoFromJson(json as Map<String, dynamic>);
}
