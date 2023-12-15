import '../../http_client/i_api_request.dart';

class RequestUpdateFragmentCategory extends IApiRequest {
  final String name;
  final int id;

  RequestUpdateFragmentCategory({
    required this.name,
    required this.id,
  }) : super(methodType: AvailableApiMethods.put, url: '/fragment/categories/');

  @override
  Object? get body => {'name': name, 'id': id};
}
