import '../../http_client/i_api_request.dart';

class RequestGetPresentation extends IApiRequest {
  final int id;

  RequestGetPresentation({
    required this.id,
  }) : super(methodType: AvailableApiMethods.get, url: '/presentation/');

  @override
  Map<String, Object?>? get queryParameters => {
        'id': id,
      };
}
