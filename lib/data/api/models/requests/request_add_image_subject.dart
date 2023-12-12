import 'dart:async';

import 'package:dio/dio.dart';

import '../../../../presentation/screens/pdf_subject/image_create_subject/image_fragment.dart';
import '../../http_client/i_api_request.dart';

class RequestAddImageSubject extends IApiRequest {
  final String title;
  final String? description;
  final List<ImageFragment> fragments;

  RequestAddImageSubject(
      {required this.title, this.description, required this.fragments})
      : super(methodType: AvailableApiMethods.post, url: '/add_pdf_subject/');

  @override
  Future<FormData>? get formData async {
    List<MultipartFile> audio = [];
    List<MultipartFile> images = [];
    int index = 0;
    for (final f in fragments) {
      if (f.audioPath != null) {
        audio.add(await MultipartFile.fromFile(f.audioPath!, headers: {
          'index': ['$index'],
          if (f.duration != null)
            'duration': [
              f.duration!.toString(),
            ],
          'filename': [f.audioPath!]
        }));
      }
      index++;
    }

    index = 0;
    for (final f in fragments) {
      images.add(await MultipartFile.fromFile(f.image, headers: {
        'index': ['$index'],
        'filename': [f.image],
        'title': [
          f.title,
        ],
        'description': [f.description ?? ''],
        'is_landscape': [f.isLandscape.toString()],
      }));

      index++;
    }
    return FormData.fromMap({
//      'file': await MultipartFile.fromFile(pdfFile, filename: pdfFile),
      'title': title,
      'description': description,
      'images_count': fragments.length,
      'images': images,
      'audio': audio,
    });
  }
}
