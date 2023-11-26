import 'dart:async';

import 'package:dio/dio.dart';

import '../../http_client/i_api_request.dart';

class RequestUpdateFragment extends IApiRequest {
  final int id;
  final String? title;
  final String? description;
  final String? imagePath;
  final String? audioPath;
  final int? duration;

  RequestUpdateFragment({
    required this.id,
    this.title,
    this.description,
    this.imagePath,
    this.audioPath,
    this.duration,
  }) : super(methodType: AvailableApiMethods.put, url: '/fragment/update/');

  @override
  Future<FormData>? get formData async {
    late MultipartFile? audio;
    late MultipartFile? image;
    if (audioPath != null) {
      audio = await MultipartFile.fromFile(audioPath!);
    }

    if (imagePath != null) {
      image = await MultipartFile.fromFile(
        imagePath!,
      );
    }

    return FormData.fromMap({
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'audio': audio,
      'duration': duration
    });
  }
}
