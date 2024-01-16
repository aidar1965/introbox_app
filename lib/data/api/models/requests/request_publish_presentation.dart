import '../../http_client/i_api_request.dart';

class RequestPublishPresentation extends IApiRequest {
  final String id;

  RequestPublishPresentation({
    required this.id,
  }) : super(
            methodType: AvailableApiMethods.post,
            url: '/presentation/publish/');

  @override
  Object? get body => {
        'id': id,
      };
}
