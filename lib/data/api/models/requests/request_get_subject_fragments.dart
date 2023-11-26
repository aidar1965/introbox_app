import '../../http_client/i_api_request.dart';

class RequestGetSubjectFragments extends IApiRequest {
  final int id;

  RequestGetSubjectFragments({required this.id})
      : super(methodType: AvailableApiMethods.get, url: '/subject/fragments/');

  @override
  Map<String, Object?>? get queryParameters => {
        'id': id,
      };
}
