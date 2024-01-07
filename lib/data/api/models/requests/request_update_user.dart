import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mime/mime.dart';

import '../../http_client/i_api_request.dart';

class RequestUpdateUser extends IApiRequest {
  final String firstName;
  final String? secondName;
  final String lastName;
  final String? about;
  final Uint8List? imageBytes;

  RequestUpdateUser(
      {required this.firstName,
      this.secondName,
      required this.lastName,
      this.about,
      this.imageBytes})
      : super(methodType: AvailableApiMethods.put, url: '/user/');

  @override
  Future<FormData>? get formData async {
    MultipartFile? image;

    final Map<String, Object?> formDataMap = {
      'first_name': firstName,
      'second_name': secondName,
      'last_name': lastName,
      'about': about
    };

    if (imageBytes != null) {
      var mime = lookupMimeType('', headerBytes: imageBytes);

      image = MultipartFile.fromBytes(imageBytes!, headers: {
        'extension': [extensionFromMime(mime!)]
      });
      formDataMap['image'] = image;
    }
    return FormData.fromMap(formDataMap);
  }
}
