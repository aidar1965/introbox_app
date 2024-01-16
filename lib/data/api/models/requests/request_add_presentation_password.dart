import '../../http_client/i_api_request.dart';

class RequestAddPresentationPassword extends IApiRequest {
  final String password;
  final String confirmPassword;
  final String id;

  RequestAddPresentationPassword(
      {required this.confirmPassword, required this.password, required this.id})
      : super(
            methodType: AvailableApiMethods.post,
            url: '/presentation/password/');

  @override
  Map<String, Object?>? get body => {
        'id': id,
        'password': password,
        'confirm_password': confirmPassword,
      };
}
