import 'package:flutter/material.dart';

class NameAndDescriptionWidget extends StatelessWidget {
  const NameAndDescriptionWidget(
      {super.key,
      required this.titleController,
      required this.descriptionController});

  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: titleController,
          decoration: const InputDecoration(hintText: 'Название'),
        ),
        TextFormField(
          controller: descriptionController,
          maxLines: null,
          decoration: const InputDecoration(hintText: 'Описание'),
        ),
      ],
    );
  }
}
