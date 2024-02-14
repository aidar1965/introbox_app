import '../../http_client/i_api_request.dart';

class RequestGetChannels extends IApiRequest {
  RequestGetChannels()
      : super(methodType: AvailableApiMethods.get, url: '/channels/');
}
