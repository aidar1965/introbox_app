import '../../http_client/i_api_request.dart';

class RequestDeleteChannel extends IApiRequest {
  final String id;

  RequestDeleteChannel({
    required this.id,
  }) : super(methodType: AvailableApiMethods.delete, url: '/channel/');

  @override
  Map<String, Object?>? get body => {
        'id': id,
      };
}
