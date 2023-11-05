import '../../http_client/i_api_request.dart';

class RequestRegister extends IApiRequest {
  final String email;
  final String password;
  final String confirmPassword;
  final String firstName;
  final String lastName;
  RequestRegister({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.firstName,
    required this.lastName,
  }) : super(methodType: AvailableApiMethods.post, url: '/register/');

  @override
  Map<String, Object?>? get body => {
        'email': email,
        'password': password,
        'confirm_password': confirmPassword,
        'first_name': firstName,
        'last_name': lastName
      };
}
