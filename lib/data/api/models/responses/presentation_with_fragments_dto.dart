import 'package:introbox/data/api/models/responses/presentation_link_dto.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:introbox/data/api/models/responses/pdf_fragment_dto.dart';

import 'channel_dto.dart';

part 'generated/presentation_with_fragments_dto.g.dart';

@JsonSerializable()
class PresentationWithFragmentsDto {
  PresentationWithFragmentsDto(
      {required this.id,
      required this.title,
      this.description,
      required this.createdAt,
      this.pdfFile,
      required this.fragmentDtoList,
      required this.channelDto,
      this.links,
      this.firstImage});

  @JsonKey(name: 'id') // "first_name":"nfgn"
  final String id;
  @JsonKey(name: 'title') // "first_name":"nfgn"
  final String title;
  @JsonKey(name: 'description') // "first_name":"nfgn"
  final String? description;
  @JsonKey(name: 'first_image') // "first_name":"nfgn"
  final String? firstImage;
  @JsonKey(name: 'created_at') // "first_name":"nfgn"
  final String createdAt;
  @JsonKey(name: 'pdf_file') // "first_name":"nfgn"
  final String? pdfFile;

  @JsonKey(name: 'channel') // "first_name":"nfgn"
  final ChannelDto channelDto;

  @JsonKey(name: 'fragments') // "last_name":"dhdrthdtr"
  final List<PdfFragmentDto> fragmentDtoList;

  @JsonKey(name: 'links') // "last---_name":"dhdrthdtr"
  final List<PresentationLinkDto>? links;

  static PresentationWithFragmentsDto fromJson(Object json) =>
      _$PresentationWithFragmentsDtoFromJson(json as Map<String, dynamic>);
}
