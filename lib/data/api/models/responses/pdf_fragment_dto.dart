import 'package:json_annotation/json_annotation.dart';

part 'generated/pdf_fragment_dto.g.dart';

@JsonSerializable()
class PdfFragmentDto {
  PdfFragmentDto({
    required this.id,
    required this.title,
    required this.description,
    this.imagePath,
    required this.isLandscape,
    this.audioPath,
    this.duration,
    required this.displayOrder,
    required this.isTitleOverImage,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'duration')
  final int? duration;

  @JsonKey(name: 'image_path')
  final String? imagePath;

  @JsonKey(name: 'is_landscape')
  final bool isLandscape;

  @JsonKey(name: 'audio_path')
  final String? audioPath;

  @JsonKey(name: 'display_order')
  final int displayOrder;

  @JsonKey(name: 'is_title_over_image')
  final bool isTitleOverImage;

  static PdfFragmentDto fromJson(Object json) =>
      _$PdfFragmentDtoFromJson(json as Map<String, dynamic>);
}
