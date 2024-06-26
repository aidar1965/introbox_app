import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:introbox/presentation/common/common_elevated_button.dart';
import 'package:introbox/presentation/utils/responsive.dart';

import '../../../../domain/models/pdf_fragment.dart';
import '../../../../generated/locale_keys.g.dart';

@RoutePage()
class FragmentsReorderScreen extends StatefulWidget {
  const FragmentsReorderScreen({super.key, required this.fragments});

  final List<PdfFragment> fragments;

  @override
  State<FragmentsReorderScreen> createState() => _FragmentsReorderScreenState();
}

class _FragmentsReorderScreenState extends State<FragmentsReorderScreen> {
  void reorderData(int oldindex, int newindex) {
    setState(() {
      if (newindex > oldindex) {
        newindex -= 1;
      }
      final items = fragments.removeAt(oldindex);
      fragments.insert(newindex, items);
    });
  }

  late List<PdfFragment> fragments;

  @override
  void initState() {
    super.initState();
    fragments = widget.fragments.map((e) => e).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.slidesReorder.tr()),
        actions: [
          SizedBox(
              width: 220,
              child: CommonElevatedButton(
                  text: LocaleKeys.buttonSave.tr(),
                  onPressed: () =>
                      context.router.pop(fragments.map((e) => e.id).toList())))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: ReorderableListView.builder(
              itemBuilder: (context, index) =>
                  _fragmentItem(fragment: fragments.elementAt(index)),
              itemCount: fragments.length,
              onReorder: reorderData),
        ),
      ),
    );
  }

  Widget _fragmentItem({
    required PdfFragment fragment,
  }) {
    return Row(key: ValueKey(fragment.id), children: [
      SizedBox(
        height: Responsive.isMobile(context) ? 100 : 200,
        width: Responsive.isMobile(context) ? 100 : 200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CachedNetworkImage(
            imageUrl: fragment.imagePath!,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Text(
          fragment.title.isNotEmpty ? fragment.title : LocaleKeys.noTitle.tr()),
      Text(fragment.description ?? ''),
    ]);
  }
}
