import '../../http_client/i_api_request.dart';

class RequestDeletePresentation extends IApiRequest {
  final int id;

  RequestDeletePresentation({
    required this.id,
  }) : super(methodType: AvailableApiMethods.delete, url: '/presentation/');

  @override
  Map<String, Object?>? get body => {
        'id': id,
      };
}
