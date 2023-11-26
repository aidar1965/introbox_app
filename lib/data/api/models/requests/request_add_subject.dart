import 'dart:async';

import 'package:dio/dio.dart';

import '../../http_client/i_api_request.dart';

class RequestAddSubject extends IApiRequest {
  final String pdfFile;
  final String title;
  final String? description;
  final int? duration;
  RequestAddSubject({
    required this.pdfFile,
    required this.title,
    this.description,
    this.duration,
  }) : super(methodType: AvailableApiMethods.post, url: '/add_subject/');

  @override
  Future<FormData>? get formData async => FormData.fromMap({
        'file': await MultipartFile.fromFile(pdfFile, filename: pdfFile),
        'title': title,
        'duration': duration,
      });
}
