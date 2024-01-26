import '../../http_client/i_api_request.dart';

class RequestRecoverPassword extends IApiRequest {
  final String email;

  RequestRecoverPassword({
    required this.email,
  }) : super(methodType: AvailableApiMethods.post, url: '/password/recover/');

  @override
  Map<String, Object?>? get body => {
        'email': email,
      };
}
