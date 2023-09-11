import 'dart:io';

import 'package:archive/archive_io.dart';

Future<void> createZip({
  required String dir,
}) async {
  final logDir = dir;

  var encoder = ZipFileEncoder();
  encoder.zipDirectory(Directory(logDir));
}

Future<void> addFile(
    {required String zipFilePath, required String addedFile}) async {
  var encoder = ZipFileEncoder();
  encoder.open(zipFilePath);
  await encoder.addFile(File(addedFile));
}
