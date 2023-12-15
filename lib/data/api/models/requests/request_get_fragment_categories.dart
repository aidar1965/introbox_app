import '../../http_client/i_api_request.dart';

class RequestGetFragmentCategories extends IApiRequest {
  RequestGetFragmentCategories()
      : super(
            methodType: AvailableApiMethods.get, url: '/fragment/categories/');
}
