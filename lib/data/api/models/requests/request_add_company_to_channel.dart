import '../../http_client/i_api_request.dart';

class RequestAddCompanyToChannel extends IApiRequest {
  final String channelId;
  final String? companyId;

  RequestAddCompanyToChannel({
    required this.channelId,
    this.companyId,
  }) : super(methodType: AvailableApiMethods.post, url: '/company_to_channel/');

  @override
  Map<String, Object?>? get body => {
        'channel_id': channelId,
        'company_id': companyId,
      };
}
