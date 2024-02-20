import '../../http_client/i_api_request.dart';

class RequestGetCourse extends IApiRequest {
  final String id;

  RequestGetCourse({
    required this.id,
  }) : super(methodType: AvailableApiMethods.get, url: '/course/');

  @override
  Map<String, Object?>? get queryParameters => {
        'id': id,
      };
}
