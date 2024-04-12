import 'package:flutter/material.dart';

import '../../domain/models/presentation_link.dart';

class LinkItem extends StatelessWidget {
  const LinkItem(
      {super.key,
      required this.link,
      required this.index,
      required this.onDelete});

  final PresentationLink link;
  final int index;
  final Function(int) onDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        link.description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Colors.black),
      ),
      subtitle: Text(link.link),
      trailing: IconButton(
          onPressed: () => onDelete(index),
          icon: const Icon(Icons.delete, color: Colors.black)),
    );
  }
}
