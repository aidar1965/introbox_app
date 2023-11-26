import '../../http_client/i_api_request.dart';

class RequestUpdateSubject extends IApiRequest {
  final int id;
  final String? title;
  final String? description;

  RequestUpdateSubject({
    required this.id,
    this.title,
    this.description,
  }) : super(methodType: AvailableApiMethods.put, url: '/subject/update/');

  @override
  Object? get body {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }
}
