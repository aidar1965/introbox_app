import 'dart:convert';
import '../../http_client/i_api_request.dart';

class RequestReorderFragments extends IApiRequest {
  final int id;
  final List<int> fragmentsIds;

  RequestReorderFragments({
    required this.id,
    required this.fragmentsIds,
  }) : super(methodType: AvailableApiMethods.post, url: '/fragments/reorder/');

  @override
  Object? get body => {
        'id': id,
        'fragments_ids': jsonEncode(fragmentsIds),
      };
}
