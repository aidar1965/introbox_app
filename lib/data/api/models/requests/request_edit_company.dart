import '../../http_client/i_api_request.dart';

class RequestEditCompany extends IApiRequest {
  final String companyId;
  final String name;
  final String? description;
  final String? website;

  RequestEditCompany({
    required this.companyId,
    required this.name,
    this.description,
    this.website,
  }) : super(methodType: AvailableApiMethods.put, url: '/company/');

  @override
  Map<String, Object?>? get body => {
        'company_id': companyId,
        'name': name,
        'description': description,
        'website': website,
      };
}
