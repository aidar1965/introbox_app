import '../../http_client/i_api_request.dart';

class RequestDeleteCourse extends IApiRequest {
  final String id;

  RequestDeleteCourse({
    required this.id,
  }) : super(methodType: AvailableApiMethods.delete, url: '/course/');

  @override
  Object? get body => {
        'id': id,
      };
}
