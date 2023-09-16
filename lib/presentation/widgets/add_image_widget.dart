import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddImageWidget extends StatefulWidget {
  const AddImageWidget({
    Key? key,
    required this.onAdd,
  }) : super(key: key);

  final Function(MapEntry<String, int>) onAdd;

  @override
  State<AddImageWidget> createState() => _AddImageWidgetState();
}

class _AddImageWidgetState extends State<AddImageWidget> {
  Image? image;

  String? imagePath;
  MapEntry<String, int>? imageMap;

  double? imageHeight;
  double? imagewidth;
  FilePickerResult? file;

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: () async {
                    file = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['jpg', 'jpeg', 'svg', 'png'],
                    );
                    if (file != null) {
                      var decodedImage = await decodeImageFromList(
                          File(file!.paths.first!).readAsBytesSync());
                      imagePath = file!.paths.first!;

                      setState(() {
                        image = Image.file(File(file!.paths.first!));
                        imageHeight = decodedImage.height.toDouble();
                        imagewidth = decodedImage.width.toDouble();
                      });
                    }
                  },
                  child: const Text('Выбрать изображение'),
                ),
              ),
            ),
          ],
        ),
        Align(
          child: Stack(children: [
            image != null
                ? Column(
                    children: [
                      ConstrainedBox(
                          constraints: const BoxConstraints(
                              maxWidth: 530, maxHeight: 530),
                          child: image),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Показ на секунде: '),
                          SizedBox(
                              width: 80,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                controller: controller,
                              )),
                          TextButton(
                              onPressed: () {
                                if (controller.text.trim() != '') {
                                  setState(() {
                                    imageMap = MapEntry(
                                        imagePath!, int.parse(controller.text));

                                    image = null;
                                    controller.text = '';
                                  });
                                  widget.onAdd(imageMap!);
                                }
                              },
                              child: Text('Добавить'))
                        ],
                      )
                    ],
                  )
                : const SizedBox(),
            image != null
                ? Positioned(
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
                : const SizedBox()
          ]),
        )
      ],
    );
  }
}
