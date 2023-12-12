import '../../http_client/i_api_request.dart';

class RequestPublishCourse extends IApiRequest {
  final int id;

  RequestPublishCourse({
    required this.id,
  }) : super(methodType: AvailableApiMethods.post, url: '/course/publish/');

  @override
  Object? get body => {
        'id': id,
      };
}
