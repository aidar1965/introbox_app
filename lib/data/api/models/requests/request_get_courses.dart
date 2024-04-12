import '../../http_client/i_api_request.dart';

class RequestGetCourses extends IApiRequest {
  final int? limit;
  final int? offset;
  final String? searchText;

  RequestGetCourses({
    this.limit,
    this.offset,
    this.searchText,
  }) : super(methodType: AvailableApiMethods.get, url: '/courses/');

  @override
  Map<String, Object?>? get queryParameters => {
        'limit': limit,
        'offset': offset,
        'search_text': searchText,
      };
}
