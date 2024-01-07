import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mime/mime.dart';

import '../../http_client/i_api_request.dart';

class RequestAddPresentationFragment extends IApiRequest {
  final int presentationId;
  final int displayOrder;
  final String title;
  final String? description;
  final Uint8List imageBytes;
  final bool isLandscape;
  final Uint8List? audioBytes;
  final int? duration;

  RequestAddPresentationFragment({
    required this.presentationId,
    required this.displayOrder,
    required this.title,
    this.description,
    required this.imageBytes,
    required this.isLandscape,
    this.audioBytes,
    this.duration,
  }) : super(
            methodType: AvailableApiMethods.post,
            url: '/presentation/fragment/');

  @override
  Future<FormData>? get formData async {
    MultipartFile? audio;
    MultipartFile image;

    final formDataMap = {
      'presentation_id': presentationId,
      'display_order': displayOrder,
      'title': title,
      'description': description,
      'is_landscape': isLandscape,
    };
    if (audioBytes != null) {
      var mime = lookupMimeType('', headerBytes: audioBytes);
      audio = MultipartFile.fromBytes(audioBytes!, headers: {
        'extension': [extensionFromMime(mime!)],
      });
      formDataMap['audio'] = audio;
      formDataMap['duration'] = duration!;
    }
    var mime = lookupMimeType('', headerBytes: imageBytes);

    image = MultipartFile.fromBytes(imageBytes, headers: {
      'extension': [extensionFromMime(mime!)],
    });
    formDataMap['image'] = image;

    return FormData.fromMap(formDataMap);
  }
}
