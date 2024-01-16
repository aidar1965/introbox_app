import 'dart:convert';
import '../../http_client/i_api_request.dart';

class RequestReorderPresentationFragments extends IApiRequest {
  final List<String> fragmentsIds;

  RequestReorderPresentationFragments({
    required this.fragmentsIds,
  }) : super(
            methodType: AvailableApiMethods.post,
            url: '/presentation/fragments/reorder/');

  @override
  Object? get body => {
        'fragments_ids': jsonEncode(fragmentsIds),
      };
}
