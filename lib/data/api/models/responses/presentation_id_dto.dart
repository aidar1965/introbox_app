import 'package:json_annotation/json_annotation.dart';

part 'generated/presentation_id_dto.g.dart';

@JsonSerializable()
class PresentationIdDto {
  PresentationIdDto({
    required this.id,
  });

  @JsonKey(name: 'id')
  final String id;

  static PresentationIdDto fromJson(Object json) =>
      _$PresentationIdDtoFromJson(json as Map<String, dynamic>);
}
