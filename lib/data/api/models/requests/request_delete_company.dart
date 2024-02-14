import '../../http_client/i_api_request.dart';

class RequestDeleteCompany extends IApiRequest {
  final String companyId;

  RequestDeleteCompany({
    required this.companyId,
  }) : super(methodType: AvailableApiMethods.delete, url: '/company/');

  @override
  Map<String, Object?>? get body => {
        'company_id': companyId,
      };
}
