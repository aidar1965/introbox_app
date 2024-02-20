import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mime/mime.dart';

import '../../http_client/i_api_request.dart';

class RequestUpdateCourse extends IApiRequest {
  final String id;
  final String title;
  final String? description;
  final String channelId;
  final double? price;
  final Uint8List? imageBytes;
  RequestUpdateCourse(
      {required this.id,
      required this.title,
      this.description,
      required this.channelId,
      this.price,
      this.imageBytes})
      : super(methodType: AvailableApiMethods.put, url: '/course/');

  @override
  Future<FormData>? get formData async {
    MultipartFile? image;

    final Map<String, Object?> formDataMap = {
      'id': id,
      'title': title,
      'description': description,
      'channel_id': channelId,
      'price': price ?? 0
    };

    if (imageBytes != null) {
      print('image is sending');
      var mime = lookupMimeType('', headerBytes: imageBytes);

      image = MultipartFile.fromBytes(imageBytes!, headers: {
        'extension': [extensionFromMime(mime!)]
      });
      formDataMap['image'] = image;
    }
    return FormData.fromMap(formDataMap);
  }
}
