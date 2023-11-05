import '../../http_client/i_api_request.dart';

class RequestConfirmation extends IApiRequest {
  final String email;
  final String code;

  RequestConfirmation({required this.email, required this.code})
      : super(methodType: AvailableApiMethods.post, url: '/confirm/');

  @override
  Map<String, Object?>? get body => {
        'email': email,
        'confirmation_code': code,
      };
}
