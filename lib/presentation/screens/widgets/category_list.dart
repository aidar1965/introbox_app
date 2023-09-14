import 'package:flutter/material.dart';

import '../../../domain/models/fragment_category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    this.categories,
    this.selectedCategories,
    required this.selectCategory,
  }) : super(key: key);

  final List<FragmentCategory>? categories;
  final List<FragmentCategory>? selectedCategories;
  final Function(FragmentCategory category) selectCategory;

  @override
  Widget build(BuildContext context) {
    ScrollController firstScrollController = ScrollController();
    return categories != null
        ? SizedBox(
            //height: 60,
            child: ListView.builder(
              controller: firstScrollController,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: categories!.length,
              itemBuilder: (BuildContext context, int index) {
                return CheckboxListTile(
                    dense: true,
                    title: Text(categories!.elementAt(index).name),
                    value: selectedCategories!
                        .map((e) => e.id)
                        .toList()
                        .contains(categories!.elementAt(index).id),
                    onChanged: (value) =>
                        selectCategory(categories!.elementAt(index)));
              },
            ),
          )
        : const SizedBox();
  }
}
