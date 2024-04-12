import 'dart:convert';

import '../../../../domain/models/presentation_link.dart';
import '../../http_client/i_api_request.dart';

class RequestUpdatePresentation extends IApiRequest {
  final String id;
  final String title;
  final String? description;
  final List<PresentationLink>? links;

  RequestUpdatePresentation({
    required this.id,
    required this.title,
    this.description,
    this.links,
  }) : super(methodType: AvailableApiMethods.put, url: '/presentation/');

  @override
  Object? get body {
    return {
      'id': id,
      'title': title,
      'description': description,
      if (links != null && links!.isNotEmpty) 'links': _convertToString(links!)
    };
  }

  String _convertToString(List<PresentationLink> list) {
    final listOfMap = list.map((e) => e.mapLink).toList();
    print(jsonEncode(listOfMap));
    return jsonEncode(listOfMap);
  }
}
