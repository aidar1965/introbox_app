import 'dart:convert';
import '../../http_client/i_api_request.dart';

class RequestReorderPresentations extends IApiRequest {
  final List<String> presentationsIds;

  RequestReorderPresentations({
    required this.presentationsIds,
  }) : super(
            methodType: AvailableApiMethods.post,
            url: '/presentations/reorder/');

  @override
  Object? get body => {
        'presentations_ids': jsonEncode(presentationsIds),
      };
}
