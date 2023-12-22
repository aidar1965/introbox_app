import 'dart:async';

import 'package:audioplayers/audioplayers.dart' as ap;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mime/mime.dart';

import '../common/common_duration_widget.dart';

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({
    Key? key,
    this.urlSource,
    this.fileBites,
    required this.onDelete,
    required this.duration,
  }) : super(key: key);

  /// Path from where to play recorded audio
  final String? urlSource;
  final Uint8List? fileBites;
  final int duration;

  /// Callback when audio file should be removed
  /// Setting this to null hides the delete button
  final VoidCallback onDelete;

  @override
  AudioPlayerWidgetState createState() => AudioPlayerWidgetState();
}

class AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  static const double _controlSize = 56;
  static const double _deleteBtnSize = 24;

  final _audioPlayer = ap.AudioPlayer()..setReleaseMode(ap.ReleaseMode.stop);
  late StreamSubscription<void> _playerStateChangedSubscription;

  late StreamSubscription<Duration> _positionChangedSubscription;
  Duration? _position;
  //Duration? _duration;

  @override
  void initState() {
    print('duation received by AudioPlayerWidget');
    print(widget.duration);
    _playerStateChangedSubscription =
        _audioPlayer.onPlayerComplete.listen((state) async {
      await stop();
      setState(() {});
    });
    _positionChangedSubscription = _audioPlayer.onPositionChanged.listen(
      (position) => setState(() {
        _position = position;
      }),
    );

    super.initState();
  }

  @override
  void didUpdateWidget(AudioPlayerWidget oldWidget) {
    stop();

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _playerStateChangedSubscription.cancel();
    _positionChangedSubscription.cancel();

    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildControl(),
                _buildSlider(200),
                IconButton(
                  icon: const Icon(Icons.delete,
                      color: Color(0xFF73748D), size: _deleteBtnSize),
                  onPressed: () {
                    if (_audioPlayer.state == ap.PlayerState.playing) {
                      stop().then((value) => widget.onDelete());
                    } else {
                      widget.onDelete();
                    }
                  },
                ),
              ],
            ),
            CommonDurationWidget(seconds: widget.duration),
          ],
        );
      },
    );
  }

  Widget _buildControl() {
    Icon icon;
    Color color;

    if (_audioPlayer.state == ap.PlayerState.playing) {
      icon = const Icon(Icons.pause, color: Colors.red, size: 30);
      color = Colors.red.withOpacity(0.1);
    } else {
      final theme = Theme.of(context);
      icon = Icon(Icons.play_arrow, color: theme.primaryColor, size: 30);
      color = theme.primaryColor.withOpacity(0.1);
    }

    return ClipOval(
      child: Material(
        color: color,
        child: InkWell(
          child:
              SizedBox(width: _controlSize, height: _controlSize, child: icon),
          onTap: () {
            if (_audioPlayer.state == ap.PlayerState.playing) {
              pause();
            } else {
              play();
            }
          },
        ),
      ),
    );
  }

  Widget _buildSlider(double widgetWidth) {
    bool canSetValue = false;

    final position = _position;

    if (position != null) {
      canSetValue = position.inMilliseconds > 0;
      canSetValue &= position.inMilliseconds <
          Duration(seconds: widget.duration).inMilliseconds;
    }

    double width = widgetWidth - _controlSize - _deleteBtnSize;
    width -= _deleteBtnSize;

    return SizedBox(
      width: width,
      child: Slider(
        activeColor: Theme.of(context).primaryColor,
        inactiveColor: Theme.of(context).colorScheme.secondary,
        onChanged: (v) {
          final position =
              v * Duration(seconds: widget.duration).inMilliseconds;
          _audioPlayer.seek(Duration(milliseconds: position.round()));
        },
        value: canSetValue && position != null
            ? position.inMilliseconds /
                Duration(seconds: widget.duration).inMilliseconds
            : 0.0,
      ),
    );
  }

  Future<void> play() async {
    if (widget.urlSource != null) {
      return _audioPlayer.play(ap.UrlSource(widget.urlSource!));
    } else {
      String? mimeType = lookupMimeType('', headerBytes: widget.fileBites!);
      ap.UrlSource urlSourceFromBytes(
        Uint8List bytes,
      ) {
        return ap.UrlSource(
            Uri.dataFromBytes(bytes, mimeType: mimeType ?? 'audio/wav')
                .toString());
      }

      return _audioPlayer.play(urlSourceFromBytes(widget.fileBites!));
    }
  }

  Future<void> pause() => _audioPlayer.pause();

  Future<void> stop() => _audioPlayer.stop();
}
