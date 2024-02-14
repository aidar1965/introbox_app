import '../../http_client/i_api_request.dart';

class RequestGetCompanies extends IApiRequest {
  RequestGetCompanies()
      : super(methodType: AvailableApiMethods.get, url: '/companies/');
}
