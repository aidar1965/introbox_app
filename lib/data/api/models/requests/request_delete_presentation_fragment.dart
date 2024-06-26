import '../../http_client/i_api_request.dart';

class RequestDeletePresentationFragment extends IApiRequest {
  final String id;

  RequestDeletePresentationFragment({
    required this.id,
  }) : super(
            methodType: AvailableApiMethods.delete,
            url: '/presentation/fragment/');

  @override
  Map<String, Object?>? get body => {
        'id': id,
      };
}
