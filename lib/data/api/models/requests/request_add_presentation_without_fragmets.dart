import '../../http_client/i_api_request.dart';

class RequestAddPresentationWithoutFragments extends IApiRequest {
  final String title;
  final String? description;
  final String channelId;

  RequestAddPresentationWithoutFragments({
    required this.title,
    this.description,
    required this.channelId,
  }) : super(
            methodType: AvailableApiMethods.post,
            url: '/image-presentation/no-fragments/');

  @override
  Map<String, Object?>? get body => {
        'title': title,
        'channel_id': channelId,
        'description': description ?? '',
        'is_audio': true,
      };
}
