import 'package:json_annotation/json_annotation.dart';

part 'generated/subject_dto.g.dart';

@JsonSerializable()
class SubjectDto {
  SubjectDto({
    required this.id,
    required this.title,
    this.description,
    this.firstImage,
    required this.createdAt,
    required this.duration,
    required this.countUncompleted,
  });

  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'first_image')
  final String? firstImage;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'duration')
  final int duration;

  @JsonKey(name: 'count_uncompleted')
  final int countUncompleted;

  static SubjectDto fromJson(Object json) =>
      _$SubjectDtoFromJson(json as Map<String, dynamic>);
}
