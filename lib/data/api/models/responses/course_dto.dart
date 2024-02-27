import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:introbox/data/api/models/responses/channel_dto.dart';
import 'presentation_dto.dart';

part 'generated/course_dto.g.dart';

@JsonSerializable()
class CourseDto {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'price')
  final double price;

  @JsonKey(name: 'lang')
  final String? locale;

  @JsonKey(name: 'is_published')
  final bool isPublished;

  @JsonKey(name: 'presentations')
  final List<PresentationDto>? presentations;

  @JsonKey(name: 'channel')
  final ChannelDto channel;
  CourseDto({
    required this.id,
    required this.title,
    this.description,
    this.image,
    required this.createdAt,
    this.updatedAt,
    required this.price,
    required this.locale,
    required this.isPublished,
    this.presentations,
    required this.channel,
  });

  static CourseDto fromJson(Object json) =>
      _$CourseDtoFromJson(json as Map<String, dynamic>);
}
