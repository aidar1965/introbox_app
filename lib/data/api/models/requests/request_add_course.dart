import 'dart:convert';
import 'dart:ui';
import '../../http_client/i_api_request.dart';

class RequestAddCourse extends IApiRequest {
  final String title;
  final String description;
  final List<int> subjectsIds;
  final Locale locale;
  RequestAddCourse(
      {required this.title,
      required this.description,
      required this.subjectsIds,
      required this.locale})
      : super(methodType: AvailableApiMethods.post, url: '/course/add/');

  @override
  Object? get body => {
        'title': title,
        'description': description,
        'subjects_ids': jsonEncode(subjectsIds),
        'lang': locale.languageCode
      };
}
