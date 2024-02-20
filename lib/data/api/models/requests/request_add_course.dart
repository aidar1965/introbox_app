import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mime/mime.dart';

import '../../http_client/i_api_request.dart';

class RequestAddCourse extends IApiRequest {
  final String title;
  final String? description;
  final String channelId;
  final double? price;
  final Uint8List? imageBytes;
  RequestAddCourse(
      {required this.title,
      this.description,
      required this.channelId,
      this.price,
      this.imageBytes})
      : super(methodType: AvailableApiMethods.post, url: '/course/');

  @override
  Future<FormData>? get formData async {
    MultipartFile? image;

    final Map<String, Object?> formDataMap = {
      'title': title,
      'description': description,
      'channel_id': channelId,
      'price': price ?? 0
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
