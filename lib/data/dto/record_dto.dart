import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_dto.g.dart';

@JsonSerializable()
class RecordDto {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'duration')
  final String duration;

  @JsonKey(name: 'audioPath')
  final String audioPath;

  @JsonKey(name: 'imagePath')
  final String? imagePath;

  @JsonKey(name: 'date')
  final DateTime date;

  RecordDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.duration,
      required this.audioPath,
      this.imagePath,
      required this.date});

  static RecordDto fromJson(Object json) =>
      _$RecordDtoFromJson(json as Map<String, dynamic>);
}
