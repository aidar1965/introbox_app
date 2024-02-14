import '../../http_client/i_api_request.dart';

class RequestAddChannel extends IApiRequest {
  final String title;
  final String? description;
  final int channelTypeId;
  final String? companyId;
  final bool isPublic;

  RequestAddChannel({
    required this.title,
    this.description,
    this.companyId,
    required this.channelTypeId,
    required this.isPublic,
  }) : super(methodType: AvailableApiMethods.post, url: '/channel/');

  @override
  Map<String, Object?>? get body => {
        'title': title,
        'description': description,
        'company_id': companyId,
        'channel_type_id': channelTypeId,
        'is_public': isPublic,
      };
}
