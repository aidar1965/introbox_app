import '../../http_client/i_api_request.dart';

class RequestGetPublicCourse extends IApiRequest {
  final String id;

  RequestGetPublicCourse({
    required this.id,
  }) : super(methodType: AvailableApiMethods.get, url: '/course/public/');

  @override
  Map<String, Object?>? get queryParameters => {
        'id': id,
      };
}
