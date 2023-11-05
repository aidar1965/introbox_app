import '../../http_client/i_api_request.dart';

class RequestLogin extends IApiRequest {
  final String email;
  final String password;

  RequestLogin({required this.email, required this.password})
      : super(methodType: AvailableApiMethods.post, url: '/login/');

  @override
  Map<String, Object?>? get body => {
        'email': email,
        'password': password,
      };
}
