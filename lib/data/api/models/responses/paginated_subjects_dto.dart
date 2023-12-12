import 'package:freezed_annotation/freezed_annotation.dart';

import 'subject_dto.dart';

part 'generated/paginated_subjects_dto.g.dart';

@JsonSerializable()
class PaginatedSubjectsDto {
  @JsonKey(name: 'offset')
  final int offset;

  @JsonKey(name: 'count')
  final int count;

  @JsonKey(name: 'subjects')
  final List<SubjectDto> courses;

  PaginatedSubjectsDto(
      {required this.offset, required this.count, required this.courses});

  static PaginatedSubjectsDto fromJson(Object json) =>
      _$PaginatedSubjectsDtoFromJson(json as Map<String, dynamic>);
}
