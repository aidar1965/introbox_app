import '../../http_client/i_api_request.dart';

class RequestGetPublicPresentations extends IApiRequest {
  final int? limit;
  final int? offset;
  final int? categoryId;

  RequestGetPublicPresentations({
    this.limit,
    this.offset,
    this.categoryId,
  }) : super(
            methodType: AvailableApiMethods.get, url: '/presentations/public/');

  @override
  Map<String, Object?>? get queryParameters => {
        'limit': limit,
        'offset': offset,
        'category_id': categoryId,
      };
}
