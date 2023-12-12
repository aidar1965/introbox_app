import '../../http_client/i_api_request.dart';

class RequestGetTutorCourses extends IApiRequest {
  final int? limit;
  final int? offset;

  RequestGetTutorCourses({this.limit, this.offset})
      : super(methodType: AvailableApiMethods.get, url: '/tutor/courses/');

  @override
  Map<String, Object?>? get queryParameters => {
        'limit': limit,
        'offset': offset,
      };
}
