import 'dart:io';

import 'package:flutter/material.dart';

class ImagesList extends StatelessWidget {
  const ImagesList({
    Key? key,
    this.imagesMap,
    required this.onDelete,
  }) : super(key: key);

  final Map<String, int>? imagesMap;
  final Function(MapEntry) onDelete;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: imagesMap != null
          ? ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagesMap!.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.file(
                            File(imagesMap!.keys.elementAt(index)),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Row(
                      children: [
                        Text('${imagesMap!.values.elementAt(index)} сек.'),
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () =>
                                onDelete(imagesMap!.entries.elementAt(index)),
                            icon: const Icon(Icons.delete))
                      ],
                    )
                  ],
                );
              })
          : const Center(child: Text('Для этой записи изображений нет')),
    );
  }
}
