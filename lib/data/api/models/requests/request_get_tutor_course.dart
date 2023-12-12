import '../../http_client/i_api_request.dart';

class RequestGetCourse extends IApiRequest {
  final int id;

  RequestGetCourse({required this.id})
      : super(methodType: AvailableApiMethods.get, url: '/tutor/course/');

  @override
  Map<String, Object?>? get queryParameters => {
        'id': id,
      };
}
