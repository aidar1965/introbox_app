import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:record/record.dart';

import '../common/common_duration_widget.dart';

import 'dart:js' as js;

class AudioRecorder extends StatefulWidget {
  const AudioRecorder({Key? key, required this.onStop}) : super(key: key);

  final void Function(({String path, int duration})) onStop;

  @override
  State<AudioRecorder> createState() => _AudioRecorderState();
}

class _AudioRecorderState extends State<AudioRecorder> {
  int _recordDuration = 0;
  Timer? _timer;
  final _audioRecorder = Record();
  StreamSubscription<RecordState>? _recordSub;
  RecordState _recordState = RecordState.stop;
  StreamSubscription<Amplitude>? _amplitudeSub;

  @override
  void initState() {
    // _recordSub = _audioRecorder.onStateChanged().listen((recordState) {
    //   setState(() => _recordState = recordState);
    // });

    super.initState();
  }

  Future<void> _start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        // We don't do anything with this but printing
        bool isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.aacLc,
        );
        if (kDebugMode) {
          print('${AudioEncoder.aacLc.name} supported: $isSupported');
        }

        isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.aacEld,
        );
        if (kDebugMode) {
          print('${AudioEncoder.aacEld.name} supported: $isSupported');
        }

        isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.aacHe,
        );
        if (kDebugMode) {
          print('${AudioEncoder.aacHe.name} supported: $isSupported');
        }

        isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.amrNb,
        );
        if (kDebugMode) {
          print('${AudioEncoder.amrNb.name} supported: $isSupported');
        }

        isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.amrWb,
        );
        if (kDebugMode) {
          print('${AudioEncoder.amrWb.name} supported: $isSupported');
        }

        isSupported = await _audioRecorder.isEncoderSupported(
          AudioEncoder.opus,
        );
        if (kDebugMode) {
          print('${AudioEncoder.opus.name} supported: $isSupported');
        }

        // final devs = await _audioRecorder.listInputDevices();
        // final isRecording = await _audioRecorder.isRecording();

        // await _audioRecorder.start(
        //   encoder: AudioEncoder.wav,
        // );
        js.context.callMethod('startRecording');
        _recordDuration = 0;

        _startTimer();
      }
      setState(() {
        _recordState = RecordState.record;
      });
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> _stop() async {
    final duration = _recordDuration;
    _timer?.cancel();
    _recordDuration = 0;
    late String blobPath;
    // final path = await _audioRecorder.stop();
    js.context.callMethod('stopRecording');
    // final r = await promiseToFuture(js.context.callMethod('stopRecording', [
    //   allowInterop((audioLink) {
    //     blobPath = audioLink;
    //     print('audiorecorder 117');
    //     print(audioLink);
    //   })
    // ]));
    // print('runType ' + r.runtimeType.toString());
    // String blobPath = js.context.callMethod('getBlobLink');

    // var audioChunksJsArray = js.context.callMethod('getRecording');

    // js.context.callMethod('releaseAudioChunks');

    // // Преобразование JsArray<dynamic> в List<int>
    // Uint8List audioBytes =
    //     Uint8List.fromList(List<int>.from(audioChunksJsArray));
    // print('audiobytes length:');
    // print(audioBytes.length);

    // final Uint8List? audioBytes =
    //     Uint8List.fromList(js.context.callMethod('getRecording'));
    setState(() {
      _recordState = RecordState.stop;
    });

    blobPath = js.context.callMethod('getBlobLink');

    widget.onStop((path: blobPath, duration: duration));
    // if (audioBytes != null) {
    //   final blob = html.Blob([audioBytes], 'audio/mp3');
    //   final path = html.Url.createObjectUrlFromBlob(blob);
    //   print('dataurl ' + path);

    //   widget.onStop((path: path, duration: duration));
    // }
  }

  Future<void> _pause() async {
    _timer?.cancel();
    await _audioRecorder.pause();
  }

  Future<void> _resume() async {
    _startTimer();
    await _audioRecorder.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildRecordStopControl(),
            const SizedBox(width: 20),
            _buildPauseResumeControl(),
            const SizedBox(width: 20),
            if (_recordState != RecordState.stop)
              CommonDurationWidget(
                seconds: _recordDuration,
              ),
          ],
        ),
        // if (_amplitude != null) ...[
        //   const SizedBox(height: 40),
        //   Text('Current: ${_amplitude?.current ?? 0.0}'),
        //   Text('Max: ${_amplitude?.max ?? 0.0}'),
        // ],
      ],
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _recordSub?.cancel();
    _amplitudeSub?.cancel();
    _audioRecorder.dispose();
    super.dispose();
  }

  Widget _buildRecordStopControl() {
    late Icon icon;
    late Color color;

    if (_recordState != RecordState.stop) {
      icon = const Icon(Icons.stop, color: Colors.red, size: 30);
      color = Colors.red.withOpacity(0.1);
    } else {
      final theme = Theme.of(context);
      icon = Icon(Icons.mic, color: theme.primaryColor, size: 30);
      color = theme.primaryColor.withOpacity(0.1);
    }

    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          child: SizedBox(width: 56, height: 56, child: icon),
          onTap: () {
            (_recordState != RecordState.stop) ? _stop() : _start();
          },
        ),
      ),
    );
  }

  Widget _buildPauseResumeControl() {
    if (_recordState == RecordState.stop) {
      return const SizedBox.shrink();
    }

    late Icon icon;
    late Color color;

    if (_recordState == RecordState.record) {
      icon = const Icon(Icons.pause, color: Colors.red, size: 30);
      color = Colors.red.withOpacity(0.1);
    } else {
      final theme = Theme.of(context);
      icon = const Icon(Icons.play_arrow, color: Colors.red, size: 30);
      color = theme.primaryColor.withOpacity(0.1);
    }

    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          child: SizedBox(width: 56, height: 56, child: icon),
          onTap: () {
            (_recordState == RecordState.pause) ? _resume() : _pause();
          },
        ),
      ),
    );
  }

  Widget _buildText() {
    if (_recordState != RecordState.stop) {
      return CommonDurationWidget(
        seconds: _recordDuration,
      );
    }

    return const Text("Начать запись");
  }

  void _startTimer() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });
  }
}
