import 'dart:convert';

import '../../../../domain/models/presentation_link.dart';
import '../../http_client/i_api_request.dart';

class RequestAddPresentationWithoutFragments extends IApiRequest {
  final String title;
  final String? description;
  final String channelId;
  final List<PresentationLink>? links;

  RequestAddPresentationWithoutFragments({
    required this.title,
    this.description,
    required this.channelId,
    this.links,
  }) : super(
            methodType: AvailableApiMethods.post,
            url: '/image-presentation/no-fragments/');

  @override
  Map<String, Object?>? get body => {
        'title': title,
        'channel_id': channelId,
        'description': description ?? '',
        'is_audio': true,
        if (links != null && links!.isNotEmpty)
          'links': _convertToString(links!)
      };
  String _convertToString(List<PresentationLink> list) {
    final listOfMap = list.map((e) => e.mapLink).toList();
    print(jsonEncode(listOfMap));
    return jsonEncode(listOfMap);
  }
}
