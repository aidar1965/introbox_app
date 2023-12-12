import 'package:flutter/material.dart';

import '../theme/dynamic_theme.dart';

class NameAndDescriptionWidget extends StatelessWidget {
  const NameAndDescriptionWidget(
      {super.key,
      required this.titleController,
      required this.descriptionController,
      this.initialName,
      this.initialDescription});

  final TextEditingController titleController;
  final TextEditingController descriptionController;

  final String? initialName;
  final String? initialDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          initialValue: initialName,
          controller: titleController,
          decoration: InputDecoration(
            labelText: 'Название',
            labelStyle: TextStyle(color: DynamicTheme.paletteOf(context).text2),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: DynamicTheme.paletteOf(context).accent),
              //<-- SEE HERE
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: DynamicTheme.paletteOf(context).accent),
              //<-- SEE HERE
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          initialValue: initialDescription,
          controller: descriptionController,
          minLines: 4,
          maxLines: null,
          decoration: InputDecoration(
            labelText: 'Описание',
            labelStyle: TextStyle(color: DynamicTheme.paletteOf(context).text2),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1, color: DynamicTheme.paletteOf(context).accent),
              //<-- SEE HERE
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 2, color: DynamicTheme.paletteOf(context).accent),
              //<-- SEE HERE
            ),
          ),
        ),
      ],
    );
  }
}
