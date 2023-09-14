import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_dto.g.dart';

@JsonSerializable()
class FragmentDto {
  @JsonKey(name: 'id')
  final int id;

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

  FragmentDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.duration,
      required this.audioPath,
      this.imagePath,
      required this.date});

  static FragmentDto fromJson(Object json) =>
      _$FragmentDtoFromJson(json as Map<String, dynamic>);
}
