import '../../http_client/i_api_request.dart';

class RequestSetPassword extends IApiRequest {
  final String oldPassword;
  final String password;
  final String confirmPassword;

  RequestSetPassword(
      {required this.oldPassword,
      required this.password,
      required this.confirmPassword})
      : super(methodType: AvailableApiMethods.post, url: '/password/');

  @override
  Map<String, Object?>? get body => {
        'old_password': oldPassword,
        'password': password,
        'confirm_password': confirmPassword
      };
}
