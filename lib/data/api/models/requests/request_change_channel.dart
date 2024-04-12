import '../../http_client/i_api_request.dart';

class RequestChangeChannel extends IApiRequest {
  final String channelId;
  final String presentationId;

  RequestChangeChannel({
    required this.channelId,
    required this.presentationId,
  }) : super(
            methodType: AvailableApiMethods.put, url: '/presentation/channel/');

  @override
  Map<String, Object?>? get body => {
        'channel_id': channelId,
        'presentation_id': presentationId,
      };
}
