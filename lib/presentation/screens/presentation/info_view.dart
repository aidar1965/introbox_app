import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:introbox/presentation/common/common_functions.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

import 'package:path/path.dart' as p;

import '../../../domain/models/channel.dart';
import '../../../domain/models/course.dart';
import '../../../domain/models/pdf_fragment.dart';
import '../../../domain/models/presentation_link.dart';
import '../../../generated/locale_keys.g.dart';

class InfoView extends StatefulWidget {
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

  @override
  State<InfoView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
  bool isDownloading = false;

  void downloadFile(String url) async {
    setState(() {
      isDownloading = true;
    });
    FileDownloader.downloadFile(
        url: url,
        onDownloadCompleted: (v) {
          setState(() {
            isDownloading = false;
          });
          CommonFunctions.showMessage(
              context, 'File downloaded', Reason.neutral);
        },
        onDownloadError: (v) {
          CommonFunctions.showMessage(
              context, 'File downloaded failed', Reason.error);
        });
    // html.AnchorElement anchorElement = html.AnchorElement(href: url);
    // anchorElement.download = url;
    // anchorElement.click();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.pdfFile != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            p.basename(widget.pdfFile!),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        const SizedBox(width: 24),
                        Builder(builder: (context) {
                          return isDownloading
                              ? SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator())
                              : IconButton(
                                  onPressed: () =>
                                      downloadFile(widget.pdfFile!),
                                  icon: const Icon(
                                    Icons.download,
                                    color: Colors.white,
                                  ));
                        })
                      ],
                    ),
                  const SizedBox(height: 12),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: widget.channel != null
                        ? GestureDetector(
                            onTap: () {},
                            child: Text(
                              '${LocaleKeys.channel.tr()} ${widget.channel!.title}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          )
                        : widget.course != null
                            ? GestureDetector(
                                onTap: () => () {},
                                child: Text(
                                    '${LocaleKeys.course.tr()} ${widget.course!.title}'))
                            : const SizedBox(),
                  ),
                  if (widget.channelWebsite != null) ...[
                    const SizedBox(height: 12),
                    Text(
                      '${LocaleKeys.channel.tr()} ${widget.channelWebsite}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ],
                  const SizedBox(height: 24),
                  Text(
                    widget.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  if (widget.description != null) ...[
                    const SizedBox(height: 24),
                    Text(
                      widget.description!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                  ],
                  const SizedBox(height: 24),
                  if (widget.links?.isNotEmpty ?? false) ...[
                    Text(
                      'Links',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 24),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => ListTile(
                            title: Text(
                                widget.links!.elementAt(index).description),
                            subtitle: Text(
                              widget.links!.elementAt(index).link,
                            ),
                            onTap: () => () {}
                            // html.window
                            //     .open(links!.elementAt(index).link, 'New tab'),
                            ),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 12),
                        itemCount: widget.links?.length ?? 0)
                  ],
                  const SizedBox(height: 24),
                  ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 12),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.fragments.length,
                      itemBuilder: (context, index) => ListTile(
                            tileColor: Color.fromARGB(221, 10, 0, 30),
                            selected: widget.fragments.elementAt(index).id ==
                                widget.selectedFragment?.id,
                            selectedTileColor:
                                const Color.fromARGB(255, 5, 35, 88),
                            onTap: () {
                              if (widget.onFragmentSelect != null) {
                                widget.onFragmentSelect!(index);
                              } else {
                                context.router.pop(index);
                              }
                            },
                            title: Text(
                              widget.fragments.elementAt(index).title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            subtitle:
                                widget.fragments.elementAt(index).description !=
                                        null
                                    ? Text(
                                        widget.fragments
                                            .elementAt(index)
                                            .description!,
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
          if (widget.selectedFragment != null)
            Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                    onPressed: () => context.router.pop(),
                    icon: const Icon(Icons.close, color: Colors.white)))
        ],
      ),
    );
  }
}
