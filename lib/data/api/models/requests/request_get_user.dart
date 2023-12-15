import '../../http_client/i_api_request.dart';

class RequestGetUser extends IApiRequest {
  RequestGetUser() : super(methodType: AvailableApiMethods.get, url: '/user/');
}
