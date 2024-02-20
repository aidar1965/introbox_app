import '../../http_client/i_api_request.dart';

class RequestAddPresentationToCourse extends IApiRequest {
  final String presentationId;
  final String courseId;

  RequestAddPresentationToCourse({
    required this.presentationId,
    required this.courseId,
  }) : super(
            methodType: AvailableApiMethods.post, url: '/course/presentation/');

  @override
  Map<String, Object?>? get body => {
        'presentation_id': presentationId,
        'course_id': courseId,
      };
}
