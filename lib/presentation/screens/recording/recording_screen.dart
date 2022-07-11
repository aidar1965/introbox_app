import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:audioplayers/audioplayers.dart';

class RecordingScreen extends StatefulWidget {
  const RecordingScreen({Key? key}) : super(key: key);

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  Image? image;
  double? imageHeight;
  double? imagewidth;
  FilePickerResult? file;

  final _audioRecorder = Record();
  final player = AudioPlayer();
  bool _isRecording = false;
  bool isRecorded = false;
  String? _localPath;

  Future<String> getLocalPath() async {
    final directory = await getTemporaryDirectory();

    return directory.path;
  }

  Future<String> get _tempDirPath async {
    final directory = await getTemporaryDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _tempDirPath;
    log('got path $path');
    return File(join(path, 'aaaudio.m4a'));
  }

  _writeFileToStorage() async {
    File audiofile = await _localFile;
    // Uint8List bytes = await audiofile.readAsBytes();
    // audiofile.writeAsBytes(bytes);
  }

  @override
  void dispose() {
    _audioRecorder.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: 'Название эпизода'),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(hintText: 'Описание эпизода'),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () async {
                file = await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: ['jpg', 'jpeg', 'svg'],
                );
                if (file != null) {
                  var decodedImage = await decodeImageFromList(
                      File(file!.paths.first!).readAsBytesSync());

                  setState(() {
                    image = Image.file(File(file!.paths.first!));
                    imageHeight = decodedImage.height.toDouble();
                    imagewidth = decodedImage.width.toDouble();
                  });
                }
              },
              child: Text(image == null
                  ? 'Добавить изображение'
                  : 'Изменить изображение')),
          image != null
              ? Expanded(
                  child: Stack(children: [
                  SizedBox(
                      width: imagewidth, height: imageHeight, child: image),
                  Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        color: Colors.white,
                        child: IconButton(
                            color: Colors.red,
                            onPressed: () {
                              setState(() {
                                image = null;
                                imagewidth = null;
                                imageHeight = null;
                                file = null;
                              });
                            },
                            icon: const Icon(Icons.close)),
                      ))
                ]))
              : const SizedBox(),
          const SizedBox(
            height: 20,
          ),
          _isRecording == false
              ? IconButton(
                  onPressed: () async {
                    if (await _audioRecorder.hasPermission()) {
                      var pass = await _localFile;
                      //await pass.writeAsString('');
                      // Start recording
                      await _audioRecorder.start(path: pass.path);
                      bool isRecording = await _audioRecorder.isRecording();
                      setState(() {
                        _isRecording = isRecording;
                        isRecorded = true;
                      });
                    }
                  },
                  icon: const Icon(Icons.mic),
                  color: Colors.green,
                  iconSize: 48,
                )
              : IconButton(
                  onPressed: () async {
                    final path = await _audioRecorder.stop();
                    //_writeFileToStorage();
                    log('saved to $path');
                    setState(() {
                      _isRecording = false;
                      _localPath = path;
                    });
                  },
                  icon: const Icon(Icons.stop),
                  color: Colors.red,
                  iconSize: 48,
                ),
          const SizedBox(
            height: 20,
          ),
          isRecorded && !_isRecording
              ? IconButton(
                  onPressed: () async {
                    await player.play(DeviceFileSource(_localPath!));
                  },
                  icon: const Icon(Icons.play_circle),
                  color: Colors.green,
                  iconSize: 48,
                )
              : const SizedBox(),
          SizedBox(
            height: isRecorded ? 20 : 0,
          ),
          TextButton(onPressed: () {}, child: const Text('Создать'))
        ],
      ),
    );
  }
}
