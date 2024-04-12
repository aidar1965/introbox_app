import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:path/path.dart';

import '../../../../domain/models/presentation_link.dart';
import '../../http_client/i_api_request.dart';

class RequestAddPdfPresentation extends IApiRequest {
  final Uint8List pdfFile;
  final String pdfFileName;
  final String title;
  final String channelId;
  final String? description;
  final List<PresentationLink>? links;

  RequestAddPdfPresentation({
    required this.pdfFile,
    required this.pdfFileName,
    required this.title,
    required this.channelId,
    this.links,
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
      if (links != null && links!.isNotEmpty) 'links': _convertToString(links!)
    });
  }

  String _convertToString(List<PresentationLink> list) {
    final listOfMap = list.map((e) => e.mapLink).toList();
    print(jsonEncode(listOfMap));
    return jsonEncode(listOfMap);
  }
}
