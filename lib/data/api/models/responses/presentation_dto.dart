import 'package:json_annotation/json_annotation.dart';

import 'channel_dto.dart';

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
    required this.hasPassword,
    this.pdfFile,
    required this.isAudio,
    required this.isPublic,
    required this.includePdf,
    required this.freeMode,
    this.links,
    required this.channelDto,
  });

  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'pdf_file')
  final String? pdfFile;

  @JsonKey(name: 'first_image')
  final String? firstImage;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'duration')
  final int? duration;

  @JsonKey(name: 'is_audio')
  final bool isAudio;

  @JsonKey(name: 'is_public')
  final bool isPublic;

  @JsonKey(name: 'has_password')
  final bool hasPassword;

  @JsonKey(name: 'is_published')
  final bool isPublished;

  @JsonKey(name: 'include_pdf')
  final bool includePdf;

  @JsonKey(name: 'free_mode')
  final bool freeMode;

  @JsonKey(name: 'links')
  final String? links;

  @JsonKey(name: 'channel')
  final ChannelDto channelDto;

  static PresentationDto fromJson(Object json) =>
      _$PresentationDtoFromJson(json as Map<String, dynamic>);
}
