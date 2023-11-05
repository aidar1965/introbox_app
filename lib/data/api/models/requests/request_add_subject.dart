import 'package:dio/dio.dart';
import 'package:path/path.dart';

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
  Object? get body => FormData.fromMap({
        'file':
            MultipartFile.fromFileSync(pdfFile, filename: basename(pdfFile)),
        'title': title,
        'duration': duration,
      });
}
