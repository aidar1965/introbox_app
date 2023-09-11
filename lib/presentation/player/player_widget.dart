import 'dart:async';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../domain/models/record.dart';
import '../../domain/models/subject.dart';

enum PlayerStatus { pause, play, stop }

class PlayerWidget extends StatefulWidget {
  const PlayerWidget(
      {Key? key,
      required this.record,
      this.onEnd,
      this.isLast,
      this.subject,
      required this.remote,
      this.onSecondPassed})
      : super(key: key);

  final Record record;
  final bool? isLast;
  final Subject? subject;
  final void Function()? onEnd;
  final bool remote;
  final Function(int)? onSecondPassed;

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  late String recordDuration;
  final AudioPlayer player = AudioPlayer();
  int recordDurationInSeconds = 0;
  late Record record;
  late Subject? subject;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calculateDuration(widget.record.duration);
    record = widget.record;
    subject = widget.subject;
    _startPlay();
  }

  void _calculateDuration(int seconds) {
    Duration d = Duration(seconds: seconds);
    setState(() {
      recordDuration = '${d.inMinutes}:${d.inSeconds % 60}';
      if (d.inSeconds % 60 < 10) {
        recordDuration = '${d.inMinutes}:0${d.inSeconds % 60}';
      }
    });
  }

  double progress = 0;
  PlayerStatus playerStatus = PlayerStatus.stop;
  Timer? timer;
  int secondsPassed = 0;
  String passed = '00:00';

  void _startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        secondsPassed++;
        _getPassedTime(secondsPassed);
        progress = secondsPassed / record.duration;
        if (widget.onSecondPassed != null) {
          widget.onSecondPassed!(secondsPassed);
        }
      });

      if (secondsPassed > record.duration) {
        setState(() {
          playerStatus = PlayerStatus.stop;
          progress = 0;
          secondsPassed = 0;
          widget.onSecondPassed ?? widget.onSecondPassed!(secondsPassed);
        });

        timer.cancel();
        if (widget.onEnd != null) {
          widget.onEnd!();
        }
      }
    });
  }

  void _getPassedTime(int sec) {
    Duration d = Duration(seconds: sec);

    setState(() {
      passed = '${d.inMinutes}:${d.inSeconds % 60}';
      if (d.inSeconds % 60 < 10) {
        passed = '${d.inMinutes}:0${d.inSeconds % 60}';
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    player.dispose();
    super.dispose();
  }

  Future<void> _startPlay() async {
    if (playerStatus == PlayerStatus.stop ||
        playerStatus == PlayerStatus.pause) {
      setState(() {
        playerStatus = PlayerStatus.play;
      });
      _startTimer();
      if (widget.remote == false) {
        await player.play(DeviceFileSource(record.audioPath), volume: 100);
      } else {
        //await player.setSourceUrl(record.audioPath);
        await player.play(UrlSource(record.audioPath), volume: 100);
      }
    }
  }

  void _getDuration(Record newRecord) {
    player.setSourceDeviceFile(newRecord.audioPath);

    setState(() {
      recordDurationInSeconds = record.duration;
      Duration d = Duration(seconds: recordDurationInSeconds);
      recordDuration = '${d.inMinutes}:${d.inSeconds % 60}';
      if (d.inSeconds % 60 < 10) {
        recordDuration = '${d.inMinutes}:0${d.inSeconds % 60}';
      }
    });
  }

  Future<void> stopPlayer() async {
    await player.stop();
  }

  Future<void> reStartPlayer() async {
    _getDuration(record);
    await player.stop();
    await player.play(
        widget.remote == false
            ? DeviceFileSource(record.audioPath)
            : UrlSource(record.audioPath),
        volume: 100);
    setState(() {
      secondsPassed = 0;
      playerStatus = PlayerStatus.play;
    });
  }

  @override
  void didUpdateWidget(PlayerWidget oldWidget) {
    if (widget.subject == null) {
      if (oldWidget.record.id != widget.record.id) {
        record = widget.record;

        _calculateDuration(recordDurationInSeconds);

        timer?.cancel();

        //playerStatus = PlayerStatus.stop;
        progress = 0;
        secondsPassed = 0;
        //   _startPlay();
        reStartPlayer();
        _startTimer();
      }
    } else {
      if (oldWidget.subject! != widget.subject ||
          oldWidget.record != widget.record) {
        record = widget.record;
        subject = widget.subject;

        _calculateDuration(recordDurationInSeconds);

        timer?.cancel();

        //playerStatus = PlayerStatus.stop;
        progress = 0;
        secondsPassed = 0;
        //   _startPlay();
        reStartPlayer();
        _startTimer();
      }
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
            width: 260,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: IconButton(
                      onPressed: () async {
                        _startPlay();
                      },
                      icon: const Icon(
                        Icons.play_circle,
                        size: 36,
                      ),
                      color: playerStatus == PlayerStatus.stop ||
                              playerStatus == PlayerStatus.pause
                          ? Colors.red
                          : Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      if (playerStatus == PlayerStatus.play) {
                        setState(() {
                          playerStatus = PlayerStatus.pause;
                        });
                        timer!.cancel();

                        await player.pause();
                      }
                    },
                    icon: const Icon(
                      Icons.pause_circle,
                      size: 36,
                    ),
                    color: playerStatus == PlayerStatus.play
                        ? Colors.red
                        : Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(
                      onPressed: () async {
                        if (playerStatus == PlayerStatus.play) {
                          setState(() {
                            playerStatus = PlayerStatus.stop;
                            secondsPassed = 0;
                            progress = 0;
                            widget.onSecondPassed ??
                                widget.onSecondPassed!(secondsPassed);
                          });
                          timer!.cancel();

                          await player.stop();
                        }
                      },
                      icon: const Icon(
                        Icons.stop_circle,
                        size: 36,
                      ),
                      color: playerStatus == PlayerStatus.play
                          ? Colors.red
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: // LinearProgressIndicator(value: progress),
                    ProgressBar(
                  progress: Duration(seconds: secondsPassed),
                  buffered: const Duration(milliseconds: 2000),
                  total: Duration(seconds: record.duration),
                  onSeek: (duration) {
                    player.seek(duration);
                    secondsPassed = duration.inSeconds;
                    widget.onSecondPassed ??
                        widget.onSecondPassed!(secondsPassed);
                    _getPassedTime(secondsPassed);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      passed,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      recordDuration,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
