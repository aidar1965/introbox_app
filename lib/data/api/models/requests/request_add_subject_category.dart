import '../../http_client/i_api_request.dart';

class RequestAddSubjectCategory extends IApiRequest {
  final String name;

  RequestAddSubjectCategory({
    required this.name,
  }) : super(methodType: AvailableApiMethods.post, url: '/subject/categories/');

  @override
  Object? get body => {
        'name': name,
      };
}
