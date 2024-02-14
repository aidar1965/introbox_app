import '../../http_client/i_api_request.dart';

class RequestEditChannel extends IApiRequest {
  final String channelId;
  final String title;
  final String? description;
  final int channelTypeId;
  final String? companyId;
  final bool isPublic;

  RequestEditChannel({
    required this.channelId,
    required this.title,
    this.description,
    this.companyId,
    required this.channelTypeId,
    required this.isPublic,
  }) : super(methodType: AvailableApiMethods.put, url: '/channel/');

  @override
  Map<String, Object?>? get body => {
        'channel_id': channelId,
        'title': title,
        'description': description,
        'company_id': companyId,
        'channel_type_id': channelTypeId,
        'is_public': isPublic,
      };
}
