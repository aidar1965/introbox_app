import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

import '../../http_client/i_api_request.dart';

class RequestAddFragment extends IApiRequest {
  final int subjectId;
  final int displayOrder;
  final String title;
  final String description;
  final File imageFile;
  final bool isLandscape;
  final String? audioPath;
  final int? duration;

  RequestAddFragment({
    required this.subjectId,
    required this.displayOrder,
    required this.title,
    required this.description,
    required this.imageFile,
    required this.isLandscape,
    this.audioPath,
    this.duration,
  }) : super(methodType: AvailableApiMethods.post, url: '/fragment/add/');

  @override
  Future<FormData>? get formData async {
    MultipartFile? audio;
    MultipartFile? image;

    final formDataMap = {
      'subject_id': subjectId,
      'display_order': displayOrder,
      'title': title,
      'description': description,
      'is_landscape': isLandscape,
    };
    if (audioPath != null) {
      audio = await MultipartFile.fromFile(audioPath!, headers: {
        'filename': [audioPath!]
      });
      formDataMap['audio'] = audio;
      formDataMap['duration'] = duration!;
    }

    image = await MultipartFile.fromFile(
      imageFile.path,
    );
    formDataMap['image'] = image;

    return FormData.fromMap(formDataMap);
  }
}
