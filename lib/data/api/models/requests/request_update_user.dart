import 'package:dio/dio.dart';

import '../../http_client/i_api_request.dart';

class RequestUpdateUser extends IApiRequest {
  final String firstName;
  final String? secondName;
  final String lastName;
  final String? about;
  final String? imagePath;

  RequestUpdateUser(
      {required this.firstName,
      this.secondName,
      required this.lastName,
      this.about,
      this.imagePath})
      : super(methodType: AvailableApiMethods.put, url: '/user/update/');

  @override
  Future<FormData>? get formData async {
    MultipartFile? image;

    final Map<String, Object?> formDataMap = {
      'first_name': firstName,
      'second_name': secondName,
      'last_name': lastName,
      'about': about
    };

    if (imagePath != null) {
      image = await MultipartFile.fromFile(imagePath!, headers: {
        'filename': [imagePath!]
      });
      formDataMap['image'] = image;
    }

    return FormData.fromMap(formDataMap);
  }
}
