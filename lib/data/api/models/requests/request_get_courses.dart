import '../../http_client/i_api_request.dart';

class RequestGetCourses extends IApiRequest {
  final int? limit;
  final int? offset;

  RequestGetCourses({this.limit, this.offset})
      : super(methodType: AvailableApiMethods.get, url: '/courses/');

  @override
  Map<String, Object?>? get queryParameters => {
        'limit': limit,
        'offset': offset,
      };
}
