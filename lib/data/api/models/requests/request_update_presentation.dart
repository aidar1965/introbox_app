import '../../http_client/i_api_request.dart';

class RequestUpdatePresentation extends IApiRequest {
  final String id;
  final String title;
  final String? description;

  RequestUpdatePresentation({
    required this.id,
    required this.title,
    this.description,
  }) : super(methodType: AvailableApiMethods.put, url: '/presentation/');

  @override
  Object? get body {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }
}
