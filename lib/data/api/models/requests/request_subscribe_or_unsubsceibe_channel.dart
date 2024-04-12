import '../../http_client/i_api_request.dart';

class RequestSubscribeOrUnsubscribeChannel extends IApiRequest {
  final String channelId;
  final bool isSubscribed;

  RequestSubscribeOrUnsubscribeChannel({
    required this.channelId,
    required this.isSubscribed,
  }) : super(methodType: AvailableApiMethods.post, url: '/channel/subscribe/');

  @override
  Map<String, Object?>? get body => {
        'channel_id': channelId,
        'is_subscribed': isSubscribed,
      };
}
