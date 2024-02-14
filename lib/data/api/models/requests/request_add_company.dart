import '../../http_client/i_api_request.dart';

class RequestAddCompany extends IApiRequest {
  final String name;
  final String? description;

  final String? website;

  RequestAddCompany({
    required this.name,
    this.description,
    this.website,
  }) : super(methodType: AvailableApiMethods.post, url: '/company/');

  @override
  Map<String, Object?>? get body => {
        'name': name,
        if (description != null) 'description': description,
        if (website != null) 'website': website,
      };
}
