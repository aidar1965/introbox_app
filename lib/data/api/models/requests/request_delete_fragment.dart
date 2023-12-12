import '../../http_client/i_api_request.dart';

class RequestDeleteFragment extends IApiRequest {
  final int id;

  RequestDeleteFragment({
    required this.id,
  }) : super(methodType: AvailableApiMethods.delete, url: '/fragment/delete/');

  @override
  Map<String, Object?>? get body => {
        'id': id,
      };
}
