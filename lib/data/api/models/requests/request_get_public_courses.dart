import '../../http_client/i_api_request.dart';

class RequestGetPublicCourses extends IApiRequest {
  final int? limit;
  final int? offset;

  RequestGetPublicCourses({this.limit, this.offset})
      : super(methodType: AvailableApiMethods.get, url: '/courses/public/');

  @override
  Map<String, Object?>? get queryParameters => {
        'limit': limit,
        'offset': offset,
      };
}
