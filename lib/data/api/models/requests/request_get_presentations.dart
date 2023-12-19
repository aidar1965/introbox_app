import '../../http_client/i_api_request.dart';

class RequestGetPresentations extends IApiRequest {
  final int? limit;
  final int? offset;
  final int? categoryId;

  RequestGetPresentations({
    this.limit,
    this.offset,
    this.categoryId,
  }) : super(methodType: AvailableApiMethods.get, url: '/presentations/');

  @override
  Map<String, Object?>? get queryParameters => {
        'limit': limit,
        'offset': offset,
        'category_id': categoryId,
      };
}
