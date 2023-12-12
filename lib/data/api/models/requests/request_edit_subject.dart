import 'dart:convert';
import 'dart:ui';
import '../../http_client/i_api_request.dart';

class RequestEditCourse extends IApiRequest {
  final int id;
  final String title;
  final String description;
  final List<int> subjectsIds;
  final Locale locale;
  RequestEditCourse(
      {required this.id,
      required this.title,
      required this.description,
      required this.subjectsIds,
      required this.locale})
      : super(methodType: AvailableApiMethods.put, url: '/course/update/');

  @override
  Object? get body => {
        'id': id,
        'title': title,
        'description': description,
        'subjects_ids': jsonEncode(subjectsIds),
        'lang': locale.languageCode
      };
}
