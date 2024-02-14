import 'package:json_annotation/json_annotation.dart';

import 'company_dto.dart';

part 'generated/channel_dto.g.dart';

@JsonSerializable()
class ChannelDto {
  ChannelDto({
    required this.id,
    required this.title,
    this.description,
    required this.channelType,
    this.companyDto,
    required this.isPublic,
  });

  @JsonKey(name: 'id') // "first_name":"nfgn"
  final String id;

  @JsonKey(name: 'title') // "first_name":"nfgn"
  final String title;

  @JsonKey(name: 'description') // "last_name":"dhdrthdtr"
  final String? description;

  @JsonKey(name: 'channel_type_id') // "last_name":"dhdrthdtr"
  final int channelType;

  @JsonKey(name: 'is_public') // "last_name":"dhdrthdtr"
  final bool isPublic;

  @JsonKey(name: 'company') // "last_name":"dhdrthdtr"
  final CompanyDto? companyDto;

  static ChannelDto fromJson(Object json) =>
      _$ChannelDtoFromJson(json as Map<String, dynamic>);
}
