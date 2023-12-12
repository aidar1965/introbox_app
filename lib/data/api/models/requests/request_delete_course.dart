import '../../http_client/i_api_request.dart';

class RequestDeleteCourse extends IApiRequest {
  final int id;

  RequestDeleteCourse({
    required this.id,
  }) : super(methodType: AvailableApiMethods.delete, url: '/course/delete/');

  @override
  Object? get body => {
        'id': id,
      };
}
