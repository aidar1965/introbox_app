import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../widgets/audio_player.dart';
import '../../../widgets/audio_recorder.dart';

@RoutePage()
class AudioRecordingScreen extends StatefulWidget {
  const AudioRecordingScreen({super.key, this.imageData, this.imagePath});

  final Uint8List? imageData;
  final String? imagePath;

  @override
  State<AudioRecordingScreen> createState() => _AudioRecordingScreenState();
}

class _AudioRecordingScreenState extends State<AudioRecordingScreen> {
  String? _path;
  int? _duration;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Запись аудио',
        ),
        leading: BackButton(
          onPressed: () =>
              context.router.pop((path: _path, duration: _duration)),
        ),
      ),
      body: Stack(
        children: [
          Center(
              child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 60,
            child: widget.imageData != null
                ? Image.memory(widget.imageData!)
                : widget.imagePath != null
                    ? widget.imagePath!.contains('http')
                        ? CachedNetworkImage(
                            progressIndicatorBuilder: (context, _, __) =>
                                const Center(
                                    child: CircularProgressIndicator()),
                            imageUrl: widget.imagePath!)
                        : Image.file(File(widget.imagePath!))
                    : Text('Изображение отсутствует'),
          )),
          Positioned(
              bottom: 30,
              child: _path == null
                  ? Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AudioRecorder(
                          onStop: (pathWithDuration) {
                            setState(() {
                              _path = pathWithDuration.path;
                              _duration = pathWithDuration.duration;
                            });
                          },
                        ),
                      ),
                    )
                  : Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AudioPlayerWidget(
                          source: _path!,
                          duration: _duration!,
                          onDelete: () {
                            setState(() {
                              _path = null;
                            });
                          },
                        ),
                      ))),
        ],
      ),
    );
  }
}
