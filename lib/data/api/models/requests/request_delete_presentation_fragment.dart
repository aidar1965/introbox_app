import '../../http_client/i_api_request.dart';

class RequestDeletePresentationFragment extends IApiRequest {
  final int id;

  RequestDeletePresentationFragment({
    required this.id,
  }) : super(
            methodType: AvailableApiMethods.delete,
            url: '/presentation/fragment/delete/');

  @override
  Map<String, Object?>? get body => {
        'id': id,
      };
}
