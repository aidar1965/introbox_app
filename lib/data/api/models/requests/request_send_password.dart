import '../../http_client/i_api_request.dart';

class RequestSendPassword extends IApiRequest {
  final String id;
  final String password;

  RequestSendPassword({required this.id, required this.password})
      : super(
            methodType: AvailableApiMethods.post,
            url: '/presentation/access-password/');

  @override
  Map<String, Object?>? get body => {
        'id': id,
        'password': password,
      };
}
