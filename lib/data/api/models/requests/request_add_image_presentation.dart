import 'dart:async';

import 'package:dio/dio.dart';
import 'package:mime/mime.dart';

import '../../http_client/i_api_request.dart';
import 'fragment_request_data.dart';

class RequestAddImagePresentation extends IApiRequest {
  final String title;
  final String? description;

  final List<FragmentRequestData> fragments;
  final int? duration;

  RequestAddImagePresentation({
    required this.title,
    this.description,
    required this.fragments,
    this.duration,
  }) : super(methodType: AvailableApiMethods.post, url: '/image-presentation/');

  @override
  Future<FormData>? get formData async {
    List<MultipartFile> audio = [];
    int index = 0;
    for (final f in fragments) {
      if (f.audioBytes != null) {
        print('audio found');
        var mime = lookupMimeType('', headerBytes: f.audioBytes);

        audio.add(MultipartFile.fromBytes(f.audioBytes!, headers: {
          'index': ['$index'],
          if (f.duration != null)
            'duration': [
              f.duration!.toString(),
            ],
          'extension': [extensionFromMime(mime!)]
        }));
      }
      index++;
    }
    return FormData.fromMap({
      'title': title,
      'description': description,
      'images_count': fragments.length,
      'images': List.generate(fragments.length, (index) {
        var mime = lookupMimeType('',
            headerBytes: fragments.elementAt(index).image.file);
        return MultipartFile.fromBytes(fragments.elementAt(index).image.file,
            headers: {
              'index': [
                '$index',
              ],
              'title': [
                fragments.elementAt(index).title,
              ],
              'description': [fragments.elementAt(index).description],
              'extension': [extensionFromMime(mime!)],
              'is_landscape': [
                fragments.elementAt(index).image.isLandscape.toString()
              ]
            });
      }).toList(),
      'audio': audio,
      'duration': duration,
      'is_audio': true
    });
  }
}
