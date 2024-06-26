import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mime/mime.dart';

import '../../http_client/i_api_request.dart';

class RequestEditPresentationFragment extends IApiRequest {
  final String id;
  final String? title;
  final String? description;
  final Uint8List? imageBytes;
  final bool? isLandscape;
  final Uint8List? audioBytes;
  final String? audioExtension;
  final int? duration;
  final int? presentationDurationDifference;
  final bool isTitleOverImage;

  RequestEditPresentationFragment(
      {required this.id,
      this.title,
      this.description,
      this.imageBytes,
      this.isLandscape,
      this.audioBytes,
      this.audioExtension,
      this.duration,
      this.presentationDurationDifference,
      required this.isTitleOverImage})
      : super(
            methodType: AvailableApiMethods.put,
            url: '/presentation/fragment/');

  @override
  Future<FormData>? get formData async {
    MultipartFile? audio;
    MultipartFile? image;

    final formDataMap = {
      'id': id,
      'title': title,
      'description': description,
      'is_landscape': isLandscape,
      'is_title_over_image': isTitleOverImage,
      'presentation_duration_difference': presentationDurationDifference
    };

    if (audioBytes != null) {
      audio = MultipartFile.fromBytes(audioBytes!, headers: {
        // 'extension': [extensionFromMime(mime!)]
        'extension': [audioExtension!]
      });

      formDataMap['audio'] = audio;
      formDataMap['duration'] = duration!;
    }
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
