import 'package:json_annotation/json_annotation.dart';

part 'generated/presentation_dto.g.dart';

@JsonSerializable()
class PresentationDto {
  PresentationDto({
    required this.id,
    required this.title,
    this.description,
    required this.firstImage,
    required this.createdAt,
    this.duration,
    required this.isPublished,
    this.pdfFile,
    required this.isAudio,
    required this.isPublic,
    required this.includePdf,
    required this.freeMode,
    this.links,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'pdf_file')
  final String? pdfFile;

  @JsonKey(name: 'first_image')
  final String firstImage;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'duration')
  final int? duration;

  @JsonKey(name: 'is_audio')
  final bool isAudio;

  @JsonKey(name: 'is_public')
  final bool isPublic;

  @JsonKey(name: 'is_published')
  final bool isPublished;

  @JsonKey(name: 'include_pdf')
  final bool includePdf;

  @JsonKey(name: 'free_mode')
  final bool freeMode;

  @JsonKey(name: 'links')
  final String? links;

  static PresentationDto fromJson(Object json) =>
      _$PresentationDtoFromJson(json as Map<String, dynamic>);
}