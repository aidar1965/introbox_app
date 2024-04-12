import '../../http_client/i_api_request.dart';

class RequestGetPresentations extends IApiRequest {
  final int? limit;
  final int? offset;
  final int? categoryId;
  final String? searchText;

  RequestGetPresentations({
    this.limit,
    this.offset,
    this.categoryId,
    this.searchText,
  }) : super(methodType: AvailableApiMethods.get, url: '/presentations/');

  @override
  Map<String, Object?>? get queryParameters => {
        'limit': limit,
        'offset': offset,
        'category_id': categoryId,
        'search_text': searchText,
      };
}
