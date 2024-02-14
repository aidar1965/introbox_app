import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';

import '../../http_client/i_api_request.dart';
import 'fragment_request_data.dart';

class RequestAddPresentation extends IApiRequest {
  final Uint8List pdfFile;
  final String pdfFileName;
  final String title;
  final String channelId;
  final String? description;
  final bool isAudio;
  final List<FragmentRequestData> fragments;
  final int? duration;

  RequestAddPresentation({
    required this.pdfFile,
    required this.pdfFileName,
    required this.title,
    required this.channelId,
    this.description,
    required this.fragments,
    required this.isAudio,
    this.duration,
  }) : super(methodType: AvailableApiMethods.post, url: '/presentation/');

  @override
  Future<FormData>? get formData async {
    List<MultipartFile> audio = [];
    List<MultipartFile> images = [];
    List<Map<String, dynamic>> fragmentsBaseData = [];

    int index = 0;
    for (final f in fragments) {
      fragmentsBaseData.add({
        'title': f.title,
        'description': f.description,
        'duration': f.duration,
        'is_title_over_image': f.image?.isTitleOverImage ?? true
      });
      if (f.audioBytes != null) {
        audio.add(MultipartFile.fromBytes(f.audioBytes!, headers: {
          'index': ['$index'],
          'extension': [f.audioExtension!],
        }));
      }
      if (f.image != null) {
        var mime = lookupMimeType('', headerBytes: f.image!.file);

        images.add(MultipartFile.fromBytes(f.image!.file, headers: {
          'index': ['$index'],
          'extension': [extensionFromMime(mime!)]
        }));
      }
      index++;
    }

    return FormData.fromMap({
      'pdf_file': MultipartFile.fromBytes(pdfFile, headers: {
        'filename': [basename(pdfFileName)]
      }),
      'is_audio': isAudio,
      'title': title,
      'description': description,
      'images_count': fragments.length,
      'fragments_data': jsonEncode(fragmentsBaseData),
      'images': images,
      'audio': audio,
      'duration': duration,
      'channel_id': channelId,
    });
  }
}
