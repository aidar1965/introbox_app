import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:mime/mime.dart';

import '../../http_client/i_api_request.dart';

class RequestAddPresentationFragment extends IApiRequest {
  final String presentationId;
  final int displayOrder;
  final String title;
  final String? description;
  Uint8List? imageBytes;
  final bool isLandscape;
  final Uint8List? audioBytes;
  final int? duration;
  final bool isTitleOverImage;
  final List<String> fragmentsIds;
  final String? audioExtention;
  final String? imageExtension;

  RequestAddPresentationFragment({
    required this.presentationId,
    required this.displayOrder,
    required this.title,
    this.description,
    this.imageBytes,
    required this.isLandscape,
    this.audioBytes,
    this.duration,
    required this.isTitleOverImage,
    required this.fragmentsIds,
    this.audioExtention,
    this.imageExtension,
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
      'is_title_over_image': isTitleOverImage,
      'fragments_ids': fragmentsIds.toString()
    };
    if (audioBytes != null) {
      var mime = lookupMimeType('', headerBytes: audioBytes);
      if (mime != null) {
        audio = MultipartFile.fromBytes(audioBytes!, headers: {
          'extension': [extensionFromMime(mime)],
        });
      } else {
        audio = MultipartFile.fromBytes(audioBytes!, headers: {
          'extension': [audioExtention!],
        });
      }

      formDataMap['audio'] = audio;
      formDataMap['duration'] = duration!;
    }
    var mime = lookupMimeType('', headerBytes: imageBytes);

    if (imageBytes != null) {
      image = MultipartFile.fromBytes(imageBytes!, headers: {
        'extension': [extensionFromMime(mime!)],
      });
      formDataMap['image'] = image;
    }

    return FormData.fromMap(formDataMap);
  }
}
