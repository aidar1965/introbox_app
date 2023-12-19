import 'dart:async';

import 'package:dio/dio.dart';
import 'package:path/path.dart';

import '../../http_client/i_api_request.dart';
import 'fragment_request_data.dart';

class RequestAddPresentation extends IApiRequest {
  final String pdfFile;
  final String title;
  final String? description;
  final bool isAudio;
  final List<FragmentRequestData> fragments;
  final int? duration;

  RequestAddPresentation({
    required this.pdfFile,
    required this.title,
    this.description,
    required this.fragments,
    required this.isAudio,
    this.duration,
  }) : super(methodType: AvailableApiMethods.post, url: '/presentation/');

  @override
  Future<FormData>? get formData async {
    List<MultipartFile> audio = [];
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
    return FormData.fromMap({
      'pdf_file': await MultipartFile.fromFile(pdfFile, headers: {
        'filename': [basename(pdfFile)]
      }),
      'is_audio': isAudio,
      'title': title,
      'description': description,
      'images_count': fragments.length,
      'images': List.generate(
          fragments.length,
          (index) => MultipartFile.fromBytes(
                  fragments.elementAt(index).image.file,
                  headers: {
                    'index': [
                      '$index',
                    ],
                    'title': [
                      fragments.elementAt(index).title,
                    ],
                    'description': [fragments.elementAt(index).description],
                    'is_landscape': [
                      fragments.elementAt(index).image.isLandscape.toString()
                    ]
                  })).toList(),
      'audio': audio,
      'duration': duration,
    });
  }
}