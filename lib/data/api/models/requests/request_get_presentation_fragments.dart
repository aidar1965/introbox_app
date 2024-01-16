import '../../http_client/i_api_request.dart';

class RequestGetPresentationFragments extends IApiRequest {
  final String id;

  RequestGetPresentationFragments({required this.id})
      : super(
            methodType: AvailableApiMethods.get,
            url: '/presentation/fragments/');

  @override
  Map<String, Object?>? get queryParameters => {
        'id': id,
      };
}
