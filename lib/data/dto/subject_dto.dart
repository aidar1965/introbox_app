import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moki_tutor/data/dto/record_dto.dart';
import 'package:moki_tutor/domain/models/record.dart';

part 'subject_dto.g.dart';

@JsonSerializable()
class SubjectDto {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'description')
  final String description;

  @JsonKey(name: 'records')
  final List<Map<String, dynamic>> recordsJson;

  @JsonKey(name: 'date')
  final String date;

  @JsonKey(name: 'duration')
  final String duration;

  SubjectDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.recordsJson,
      required this.date,
      required this.duration});

  static SubjectDto fromJson(Object json) =>
      _$SubjectDtoFromJson(json as Map<String, dynamic>);
}
