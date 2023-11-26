import '../../http_client/i_api_request.dart';

class RequestGetSubjects extends IApiRequest {
  final int? limit;
  final int? offset;

  RequestGetSubjects({this.limit, this.offset})
      : super(
            methodType: AvailableApiMethods.get,
            url: '/get_subjects_by_tutor/');

  @override
  Map<String, Object?>? get queryParameters => {
        'limit': limit,
        'offset': offset,
      };
}
