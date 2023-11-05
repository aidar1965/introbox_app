import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../widgets/audio_player.dart';
import '../../../widgets/audio_recorder.dart';

@RoutePage()
class AudioRecordingScreen extends StatefulWidget {
  const AudioRecordingScreen({super.key, required this.imageData});

  final Uint8List imageData;

  @override
  State<AudioRecordingScreen> createState() => _AudioRecordingScreenState();
}

class _AudioRecordingScreenState extends State<AudioRecordingScreen> {
  String? _path;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Запись аудио',
        ),
        leading: BackButton(
          onPressed: () => context.router.pop(_path),
        ),
      ),
      body: Stack(
        children: [
          Center(
              child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 60,
            child: Image.memory(widget.imageData),
          )),
          Positioned(
            bottom: 30,
            child: _path == null
                ? AudioRecorder(
                    onStop: (path) {
                      setState(() {
                        _path = path;
                      });
                    },
                  )
                : AudioPlayerWidget(
                    source: _path!,
                    onDelete: () {
                      setState(() {
                        _path = null;
                      });
                    },
                  ),
          )
        ],
      ),
    );
  }
}
