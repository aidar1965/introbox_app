import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mime/mime.dart';

import '../../http_client/i_api_request.dart';
import 'fragment_request_data.dart';

class RequestAddImagePresentation extends IApiRequest {
  final String title;
  final String? description;
  final String channelId;
  final List<FragmentRequestData> fragments;
  final int? duration;

  RequestAddImagePresentation({
    required this.title,
    this.description,
    required this.channelId,
    required this.fragments,
    this.duration,
  }) : super(methodType: AvailableApiMethods.post, url: '/image-presentation/');

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
        var mime = lookupMimeType('', headerBytes: f.audioBytes);

        audio.add(MultipartFile.fromBytes(f.audioBytes!, headers: {
          'index': ['$index'],
          'extension': [extensionFromMime(mime!)]
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
      'title': title,
      'description': description,
      'channel_id': channelId,
      'fragments_data': jsonEncode(fragmentsBaseData),
      'images': images,
      'audio': audio,
      'duration': duration,
      'is_audio': true
    });
  }
}
