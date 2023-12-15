import '../../http_client/i_api_request.dart';

class RequestDeleteFragmentCategory extends IApiRequest {
  final int id;

  RequestDeleteFragmentCategory({
    required this.id,
  }) : super(
            methodType: AvailableApiMethods.delete,
            url: '/fragment/categories/');

  @override
  Object? get body => {'id': id};
}
