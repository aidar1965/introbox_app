import 'package:json_annotation/json_annotation.dart';

part 'generated/pdf_fragment_dto.g.dart';

@JsonSerializable()
class PdfFragmentDto {
  PdfFragmentDto({
    required this.id,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.isLandscape,
    this.audioPath,
    this.duration,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'duration')
  final int? duration;

  @JsonKey(name: 'image_path')
  final String imagePath;

  @JsonKey(name: 'is_landscape')
  final bool isLandscape;

  @JsonKey(name: 'audio_path')
  final String? audioPath;

  static PdfFragmentDto fromJson(Object json) =>
      _$PdfFragmentDtoFromJson(json as Map<String, dynamic>);
}
