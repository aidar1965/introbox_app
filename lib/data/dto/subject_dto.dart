import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_dto.g.dart';

@JsonSerializable()
class SubjectDto {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'records')
  final List<Map<String, dynamic>>? recordsJson;

  @JsonKey(name: 'date')
  final String date;

  @JsonKey(name: 'duration')
  final int? duration;

  SubjectDto(
      {required this.id,
      required this.title,
      this.description,
      this.recordsJson,
      required this.date,
      this.duration});

  static SubjectDto fromJson(Object json) =>
      _$SubjectDtoFromJson(json as Map<String, dynamic>);
}
