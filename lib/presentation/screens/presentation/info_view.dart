import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'dart:html' as html;
import 'package:path/path.dart' as p;

import '../../../domain/models/channel.dart';
import '../../../domain/models/course.dart';
import '../../../domain/models/pdf_fragment.dart';
import '../../../domain/models/presentation_link.dart';
import '../../../generated/locale_keys.g.dart';

class InfoView extends StatelessWidget {
  const InfoView({
    super.key,
    required this.fragments,
    this.selectedFragment,
    required this.title,
    this.description,
    this.pdfFile,
    this.links,
    this.channel,
    this.channelWebsite,
    this.course,
    this.onFragmentSelect,
  });

  final List<PdfFragment> fragments;
  final PdfFragment? selectedFragment;
  final String title;
  final String? description;
  final String? pdfFile;
  final Channel? channel;
  final List<PresentationLink>? links;
  final String? channelWebsite;
  final Course? course;
  final Function(int)? onFragmentSelect;

  void downloadFile(String url) {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (pdfFile != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        p.basename(pdfFile!),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            decoration: TextDecoration.underline),
                      ),
                      const SizedBox(width: 24),
                      IconButton(
                          onPressed: () => downloadFile(pdfFile!),
                          icon: const Icon(
                            Icons.download,
                            color: Colors.white,
                          ))
                    ],
                  ),
                const SizedBox(height: 12),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: channel != null
                      ? GestureDetector(
                          onTap: () {},
                          child: Text(
                            '${LocaleKeys.channel.tr()} ${channel!.title}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )
                      : course != null
                          ? GestureDetector(
                              onTap: () => () {},
                              child: Text(
                                  '${LocaleKeys.course.tr()} ${course!.title}'))
                          : const SizedBox(),
                ),
                if (channelWebsite != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    '${LocaleKeys.channel.tr()} $channelWebsite',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
                const SizedBox(height: 24),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                if (description != null) ...[
                  const SizedBox(height: 24),
                  Text(
                    description!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ],
                const SizedBox(height: 24),
                if (links?.isNotEmpty ?? false) ...[
                  Text(
                    'Links',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 24),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ListTile(
                            title: Text(links!.elementAt(index).description),
                            subtitle: Text(
                              links!.elementAt(index).link,
                            ),
                            onTap: () => html.window
                                .open(links!.elementAt(index).link, 'New tab'),
                          ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 12),
                      itemCount: links?.length ?? 0)
                ],
                const SizedBox(height: 24),
                ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: fragments.length,
                    itemBuilder: (context, index) => ListTile(
                          tileColor: Color.fromARGB(221, 10, 0, 30),
                          selected: fragments.elementAt(index).id ==
                              selectedFragment?.id,
                          selectedTileColor:
                              const Color.fromARGB(255, 5, 35, 88),
                          onTap: () {
                            if (onFragmentSelect != null) {
                              onFragmentSelect!(index);
                            } else {
                              context.router.pop(index);
                            }
                          },
                          title: Text(
                            fragments.elementAt(index).title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          subtitle:
                              fragments.elementAt(index).description != null
                                  ? Text(
                                      fragments.elementAt(index).description!,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    )
                                  : null,
                        )),
              ],
            ),
          ),
        ),
        if (selectedFragment != null)
          Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                  onPressed: () => context.router.pop(),
                  icon: const Icon(Icons.close, color: Colors.white)))
      ],
    );
  }
}
