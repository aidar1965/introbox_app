import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../common/pdf_player_widget.dart';

class PlayFragmentScreen extends StatefulWidget {
  const PlayFragmentScreen(
      {super.key,
      this.imageBytes,
      this.audioPath,
      this.duration,
      required this.title});

  final Uint8List? imageBytes;
  final String? audioPath;
  final int? duration;
  final String title;

  @override
  State<PlayFragmentScreen> createState() => _PlayFragmentScreenState();
}

class _PlayFragmentScreenState extends State<PlayFragmentScreen> {
  double opacityLevel = 0.0;

  void _showPlayer(PointerEvent details) {
    setState(() => opacityLevel = 0.5);
  }

  void _hidePlayer(PointerEvent details) {
    setState(() => opacityLevel = 0.0);
  }

  @override
  Widget build(BuildContext context) {
    print(widget.audioPath);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Container(
          height: height,
          width: width,
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                  height: height - 40,
                  width: width - 40,
                  child: Center(
                      child: widget.imageBytes != null
                          ? Image.memory(widget.imageBytes!)
                          : Text(widget.title)))
            ],
          )),
      if (widget.audioPath != null)
        AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: opacityLevel,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: MouseRegion(
                onHover: _showPlayer,
                onExit: _hidePlayer,
                child: Container(
                  color: Colors.black,
                  height: 200,
                  width: 1000,
                  child: Center(
                    child: SizedBox(
                      width: 320,
                      height: 240,
                      child: Center(
                          child: PdfPlayerWidget(
                        fragmentData: (
                          audioPath: widget.audioPath,
                          duration: widget.duration,
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      Positioned(
          right: 10,
          top: 10,
          child: FloatingActionButton(
            heroTag: 'close',
            backgroundColor: Colors.black54,
            foregroundColor: Colors.white10,
            onPressed: () async {
              context.router.pop();
            },
            tooltip: 'Закрыть',
            child: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          )),
    ]);
  }
}
