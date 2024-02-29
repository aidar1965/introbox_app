import 'dart:async';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:path/path.dart';

import '../../http_client/i_api_request.dart';

class RequestAddPdfPresentation extends IApiRequest {
  final Uint8List pdfFile;
  final String pdfFileName;
  final String title;
  final String channelId;
  final String? description;

  RequestAddPdfPresentation({
    required this.pdfFile,
    required this.pdfFileName,
    required this.title,
    required this.channelId,
    this.description,
  }) : super(
            methodType: AvailableApiMethods.post,
            url: '/presentation/no-fragments/');

  @override
  Future<FormData>? get formData async {
    return FormData.fromMap({
      'pdf_file': MultipartFile.fromBytes(pdfFile, headers: {
        'filename': [basename(pdfFileName)]
      }),
      'title': title,
      'description': description,
      'channel_id': channelId,
    });
  }
}
