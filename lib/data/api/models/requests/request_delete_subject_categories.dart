import '../../http_client/i_api_request.dart';

class RequestDeleteSubjectCategory extends IApiRequest {
  final int id;

  RequestDeleteSubjectCategory({
    required this.id,
  }) : super(
            methodType: AvailableApiMethods.delete,
            url: '/subject/categories/');

  @override
  Object? get body => {'id': id};
}
