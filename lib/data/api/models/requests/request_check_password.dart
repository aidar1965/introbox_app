import '../../http_client/i_api_request.dart';

class RequestCheckPassword extends IApiRequest {
  final String id;

  RequestCheckPassword({
    required this.id,
  }) : super(
            methodType: AvailableApiMethods.post,
            url: '/presentation/check_password/');

  @override
  Map<String, Object?>? get body => {
        'id': id,
      };
}
