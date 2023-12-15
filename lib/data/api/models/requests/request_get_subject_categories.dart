import '../../http_client/i_api_request.dart';

class RequestGetSubjectCategories extends IApiRequest {
  RequestGetSubjectCategories()
      : super(methodType: AvailableApiMethods.get, url: '/subject/categories/');
}
