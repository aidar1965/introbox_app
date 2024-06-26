// import 'dart:async';
// import 'dart:math';
// import 'package:audio_session/audio_session.dart';
// import 'package:just_audio/just_audio.dart';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:rxdart/rxdart.dart';

// class AudioPlayerWidget extends StatefulWidget {
//   const AudioPlayerWidget({
//     Key? key,
//     this.urlSource,
//     this.fileBites,
//     required this.onDelete,
//     required this.duration,
//   }) : super(key: key);

//   /// Path from where to play recorded audio
//   final String? urlSource;
//   final Uint8List? fileBites;
//   final int duration;

//   /// Callback when audio file should be removed
//   /// Setting this to null hides the delete button
//   final VoidCallback onDelete;

//   @override
//   AudioPlayerWidgetState createState() => AudioPlayerWidgetState();
// }

// class AudioPlayerWidgetState extends State<AudioPlayerWidget>
//     with WidgetsBindingObserver {
//   final _player = AudioPlayer();

//   T? ambiguate<T>(T? value) => value;

//   @override
//   void initState() {
//     super.initState();
//     ambiguate(WidgetsBinding.instance)!.addObserver(this);
//     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//       statusBarColor: Colors.black,
//     ));
//     _init();
//   }

//   Future<void> _init() async {
//     // Inform the operating system of our app's audio attributes etc.
//     // We pick a reasonable default for an app that plays speech.
//     final session = await AudioSession.instance;
//     await session.configure(const AudioSessionConfiguration.speech());
//     // Listen to errors during playback.
//     _player.playbackEventStream.listen((event) {},
//         onError: (Object e, StackTrace stackTrace) {
//       print('A stream error occurred: $e');
//     });
//     // Try to load audio from a source and catch any errors.
//     try {
//       // AAC example: https://dl.espressif.com/dl/audio/ff-16b-2c-44100hz.aac
//       if (widget.urlSource != null) {
//         await _player
//             .setAudioSource(AudioSource.uri(Uri.parse(widget.urlSource!)));
//       } else {
//         await _player.setAudioSource(MyJABytesSource(widget.fileBites!));
//       }
//     } catch (e) {
//       print("Error loading audio source: $e");
//     }
//   }

//   @override
//   void dispose() {
//     ambiguate(WidgetsBinding.instance)!.removeObserver(this);
//     // Release decoders and buffers back to the operating system making them
//     // available for other apps to use.
//     _player.dispose();
//     super.dispose();
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     if (state == AppLifecycleState.paused) {
//       // Release the player's resources when not in use. We use "stop" so that
//       // if the app resumes later, it will still remember what position to
//       // resume from.
//       _player.stop();
//     }
//   }

//   /// Collects the data useful for displaying in a seek bar, using a handy
//   /// feature of rx_dart to combine the 3 streams of interest into one.
//   Stream<PositionData> get _positionDataStream =>
//       Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
//           _player.positionStream,
//           _player.bufferedPositionStream,
//           _player.durationStream,
//           (position, bufferedPosition, duration) => PositionData(
//               position, bufferedPosition, duration ?? Duration.zero));

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Display play/pause button and volume/speed sliders.
//               ControlButtons(_player),
//               // Display seek bar. Using StreamBuilder, this widget rebuilds
//               // each time the position, buffered position or duration changes.
//               StreamBuilder<PositionData>(
//                 stream: _positionDataStream,
//                 builder: (context, snapshot) {
//                   final positionData = snapshot.data;
//                   return SeekBar(
//                     duration: positionData?.duration ?? Duration.zero,
//                     position: positionData?.position ?? Duration.zero,
//                     bufferedPosition:
//                         positionData?.bufferedPosition ?? Duration.zero,
//                     onChangeEnd: _player.seek,
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class PositionData {
//   final Duration position;
//   final Duration bufferedPosition;
//   final Duration duration;

//   PositionData(this.position, this.bufferedPosition, this.duration);
// }

// class ControlButtons extends StatelessWidget {
//   final AudioPlayer player;

//   const ControlButtons(this.player, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         IconButton(
//           icon: const Icon(Icons.volume_up),
//           onPressed: () {
//             showSliderDialog(
//               context: context,
//               title: "Adjust volume",
//               divisions: 10,
//               min: 0.0,
//               max: 1.0,
//               value: player.volume,
//               stream: player.volumeStream,
//               onChanged: player.setVolume,
//             );
//           },
//         ),
//         StreamBuilder<SequenceState?>(
//           stream: player.sequenceStateStream,
//           builder: (context, snapshot) => IconButton(
//             icon: const Icon(Icons.skip_previous),
//             onPressed: player.hasPrevious ? player.seekToPrevious : null,
//           ),
//         ),
//         StreamBuilder<PlayerState>(
//           stream: player.playerStateStream,
//           builder: (context, snapshot) {
//             final playerState = snapshot.data;
//             final processingState = playerState?.processingState;
//             final playing = playerState?.playing;
//             if (processingState == ProcessingState.loading ||
//                 processingState == ProcessingState.buffering) {
//               return Container(
//                 margin: const EdgeInsets.all(8.0),
//                 width: 64.0,
//                 height: 64.0,
//                 child: const CircularProgressIndicator(),
//               );
//             } else if (playing != true) {
//               return IconButton(
//                 icon: const Icon(Icons.play_arrow),
//                 iconSize: 64.0,
//                 onPressed: player.play,
//               );
//             } else if (processingState != ProcessingState.completed) {
//               return IconButton(
//                 icon: const Icon(Icons.pause),
//                 iconSize: 64.0,
//                 onPressed: player.pause,
//               );
//             } else {
//               return IconButton(
//                 icon: const Icon(Icons.replay),
//                 iconSize: 64.0,
//                 onPressed: () => player.seek(Duration.zero,
//                     index: player.effectiveIndices!.first),
//               );
//             }
//           },
//         ),
//         StreamBuilder<SequenceState?>(
//           stream: player.sequenceStateStream,
//           builder: (context, snapshot) => IconButton(
//             icon: const Icon(Icons.skip_next),
//             onPressed: player.hasNext ? player.seekToNext : null,
//           ),
//         ),
//         StreamBuilder<double>(
//           stream: player.speedStream,
//           builder: (context, snapshot) => IconButton(
//             icon: Text("${snapshot.data?.toStringAsFixed(1)}x",
//                 style: const TextStyle(fontWeight: FontWeight.bold)),
//             onPressed: () {
//               showSliderDialog(
//                 context: context,
//                 title: "Adjust speed",
//                 divisions: 10,
//                 min: 0.5,
//                 max: 1.5,
//                 value: player.speed,
//                 stream: player.speedStream,
//                 onChanged: player.setSpeed,
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }

// void showSliderDialog({
//   required BuildContext context,
//   required String title,
//   required int divisions,
//   required double min,
//   required double max,
//   String valueSuffix = '',
//   // TODO: Replace these two by ValueStream.
//   required double value,
//   required Stream<double> stream,
//   required ValueChanged<double> onChanged,
// }) {
//   showDialog<void>(
//     context: context,
//     builder: (context) => AlertDialog(
//       title: Text(title, textAlign: TextAlign.center),
//       content: StreamBuilder<double>(
//         stream: stream,
//         builder: (context, snapshot) => SizedBox(
//           height: 100.0,
//           child: Column(
//             children: [
//               Text('${snapshot.data?.toStringAsFixed(1)}$valueSuffix',
//                   style: const TextStyle(
//                       fontFamily: 'Fixed',
//                       fontWeight: FontWeight.bold,
//                       fontSize: 24.0)),
//               Slider(
//                 divisions: divisions,
//                 min: min,
//                 max: max,
//                 value: snapshot.data ?? value,
//                 onChanged: onChanged,
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }

// class AudioMetadata {
//   final String album;
//   final String title;
//   final String artwork;

//   AudioMetadata({
//     required this.album,
//     required this.title,
//     required this.artwork,
//   });
// }

// class SeekBar extends StatefulWidget {
//   final Duration duration;
//   final Duration position;
//   final Duration bufferedPosition;
//   final ValueChanged<Duration>? onChanged;
//   final ValueChanged<Duration>? onChangeEnd;

//   const SeekBar({
//     Key? key,
//     required this.duration,
//     required this.position,
//     required this.bufferedPosition,
//     this.onChanged,
//     this.onChangeEnd,
//   }) : super(key: key);

//   @override
//   SeekBarState createState() => SeekBarState();
// }

// class SeekBarState extends State<SeekBar> {
//   double? _dragValue;
//   late SliderThemeData _sliderThemeData;

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();

//     _sliderThemeData = SliderTheme.of(context).copyWith(
//       trackHeight: 2.0,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SliderTheme(
//           data: _sliderThemeData.copyWith(
//             thumbShape: HiddenThumbComponentShape(),
//             activeTrackColor: Colors.blue.shade100,
//             inactiveTrackColor: Colors.grey.shade300,
//           ),
//           child: ExcludeSemantics(
//             child: Slider(
//               min: 0.0,
//               max: widget.duration.inMilliseconds.toDouble(),
//               value: min(widget.bufferedPosition.inMilliseconds.toDouble(),
//                   widget.duration.inMilliseconds.toDouble()),
//               onChanged: (value) {
//                 setState(() {
//                   _dragValue = value;
//                 });
//                 if (widget.onChanged != null) {
//                   widget.onChanged!(Duration(milliseconds: value.round()));
//                 }
//               },
//               onChangeEnd: (value) {
//                 if (widget.onChangeEnd != null) {
//                   widget.onChangeEnd!(Duration(milliseconds: value.round()));
//                 }
//                 _dragValue = null;
//               },
//             ),
//           ),
//         ),
//         SliderTheme(
//           data: _sliderThemeData.copyWith(
//             inactiveTrackColor: Colors.transparent,
//           ),
//           child: Slider(
//             min: 0.0,
//             max: widget.duration.inMilliseconds.toDouble(),
//             value: min(_dragValue ?? widget.position.inMilliseconds.toDouble(),
//                 widget.duration.inMilliseconds.toDouble()),
//             onChanged: (value) {
//               setState(() {
//                 _dragValue = value;
//               });
//               if (widget.onChanged != null) {
//                 widget.onChanged!(Duration(milliseconds: value.round()));
//               }
//             },
//             onChangeEnd: (value) {
//               if (widget.onChangeEnd != null) {
//                 widget.onChangeEnd!(Duration(milliseconds: value.round()));
//               }
//               _dragValue = null;
//             },
//           ),
//         ),
//         Positioned(
//           right: 16.0,
//           bottom: 0.0,
//           child: Text(
//               RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
//                       .firstMatch("$_remaining")
//                       ?.group(1) ??
//                   '$_remaining',
//               style: Theme.of(context).textTheme.bodySmall),
//         ),
//       ],
//     );
//   }

//   Duration get _remaining => widget.duration - widget.position;
// }

// class HiddenThumbComponentShape extends SliderComponentShape {
//   @override
//   Size getPreferredSize(bool isEnabled, bool isDiscrete) => Size.zero;

//   @override
//   void paint(
//     PaintingContext context,
//     Offset center, {
//     required Animation<double> activationAnimation,
//     required Animation<double> enableAnimation,
//     required bool isDiscrete,
//     required TextPainter labelPainter,
//     required RenderBox parentBox,
//     required SliderThemeData sliderTheme,
//     required TextDirection textDirection,
//     required double value,
//     required double textScaleFactor,
//     required Size sizeWithOverflow,
//   }) {}
// }

// class MyJABytesSource extends StreamAudioSource {
//   final Uint8List _buffer;

//   MyJABytesSource(this._buffer) : super(tag: 'MyAudioSource');

//   @override
//   Future<StreamAudioResponse> request([int? start, int? end]) async {
//     // Returning the stream audio response with the parameters
//     return StreamAudioResponse(
//       sourceLength: _buffer.length,
//       contentLength: (end ?? _buffer.length) - (start ?? 0),
//       offset: start ?? 0,
//       stream: Stream.fromIterable([_buffer.sublist(start ?? 0, end)]),
//       contentType: 'audio/wav',
//     );
//   }
// }
