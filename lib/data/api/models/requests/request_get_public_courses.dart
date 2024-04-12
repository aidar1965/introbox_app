import '../../http_client/i_api_request.dart';

class RequestGetPublicCourses extends IApiRequest {
  final int? limit;
  final int? offset;
  final String? searchText;

  RequestGetPublicCourses({this.limit, this.offset, this.searchText})
      : super(methodType: AvailableApiMethods.get, url: '/courses/public/');

  @override
  Map<String, Object?>? get queryParameters =>
      {'limit': limit, 'offset': offset, 'search_text': searchText};
}
