import '../../http_client/i_api_request.dart';

class RequestDeleteSubject extends IApiRequest {
  final int id;

  RequestDeleteSubject({
    required this.id,
  }) : super(methodType: AvailableApiMethods.delete, url: '/subjects/delete/');

  @override
  Map<String, Object?>? get body => {
        'id': id,
      };
}
