import '../../http_client/i_api_request.dart';

class RequestUpdateSubjectCategory extends IApiRequest {
  final String name;
  final int id;

  RequestUpdateSubjectCategory({required this.name, required this.id})
      : super(methodType: AvailableApiMethods.put, url: '/subject/categories/');

  @override
  Object? get body => {'name': name, 'id': id};
}
