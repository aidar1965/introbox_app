import '../../http_client/i_api_request.dart';

class RequestRemovePresentationFromCourse extends IApiRequest {
  final String id;

  RequestRemovePresentationFromCourse({
    required this.id,
  }) : super(
            methodType: AvailableApiMethods.delete,
            url: '/course/presentation/');

  @override
  Object? get body => {
        'id': id,
      };
}
