import '../../http_client/i_api_request.dart';

class RequestGetPublicPresentations extends IApiRequest {
  final int? limit;
  final int? offset;
  final int? categoryId;
  final String? searchText;

  RequestGetPublicPresentations({
    this.limit,
    this.offset,
    this.categoryId,
    this.searchText,
  }) : super(
            methodType: AvailableApiMethods.get, url: '/presentations/public/');

  @override
  Map<String, Object?>? get queryParameters => {
        'limit': limit,
        'offset': offset,
        'category_id': categoryId,
        'search_text': searchText,
      };
}
