import 'dart:async';

import 'package:dio/dio.dart';

import '../../http_client/i_api_request.dart';

class RequestUpdateFragment extends IApiRequest {
  final int id;
  final String? title;
  final String? description;
  final String? imagePath;
  final bool? isLandscape;
  final String? audioPath;
  final int? duration;
  final int? subjectDurationDifference;

  RequestUpdateFragment({
    required this.id,
    this.title,
    this.description,
    this.imagePath,
    this.isLandscape,
    this.audioPath,
    this.duration,
    this.subjectDurationDifference,
  }) : super(methodType: AvailableApiMethods.put, url: '/fragment/update/');

  @override
  Future<FormData>? get formData async {
    MultipartFile? audio;
    MultipartFile? image;

    final formDataMap = {
      'id': id,
      'title': title,
      'description': description,
      'subject_duration_difference': subjectDurationDifference,
    };
    if (audioPath != null) {
      audio = await MultipartFile.fromFile(audioPath!, headers: {
        'filename': [audioPath!]
      });
      formDataMap['audio'] = audio;
      formDataMap['duration'] = duration;
    }

    if (imagePath != null) {
      image = await MultipartFile.fromFile(
        imagePath!,
      );
      formDataMap['image'] = image;
      formDataMap['is_landscape'] = isLandscape;
    }

    return FormData.fromMap(formDataMap);
  }
}
