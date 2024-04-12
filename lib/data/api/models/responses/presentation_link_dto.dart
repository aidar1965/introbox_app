import 'package:json_annotation/json_annotation.dart';

import 'channel_dto.dart';

part 'generated/presentation_link_dto.g.dart';

@JsonSerializable()
class PresentationLinkDto {
  PresentationLinkDto({
    required this.description,
    required this.link,
  });

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'link')
  final String link;

  static PresentationLinkDto fromJson(Object json) =>
      _$PresentationLinkDtoFromJson(json as Map<String, dynamic>);
}
