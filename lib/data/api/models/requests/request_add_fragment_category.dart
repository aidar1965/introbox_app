import '../../http_client/i_api_request.dart';

class RequestAddFragmentCategory extends IApiRequest {
  final String name;

  RequestAddFragmentCategory({
    required this.name,
  }) : super(
            methodType: AvailableApiMethods.post, url: '/fragment/categories/');

  @override
  Object? get body => {
        'name': name,
      };
}
