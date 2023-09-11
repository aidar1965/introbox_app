import 'dart:io';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:platform_device_id/platform_device_id.dart';
import 'package:window_manager/window_manager.dart';

class Constants {
  static const String audioFolder = 'audio';
  static const String imagesFolder = 'images';
  static const String tempFolder = 'temp';
  static const String dbFolder = 'db';

  static String? fullAudioFolder;
  static String? fullImageFolder;
  static String? fullHiveFolder;
  static String? fullTempFolder;

  // static String? deviceId;

  static Future<void> init() async {
    await windowManager.ensureInitialized();
    WindowOptions windowOptions = const WindowOptions(
      center: true,
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.maximize();
      var size = await windowManager.getSize();
      await windowManager.setMinimumSize(size);

      await windowManager.show();
      await windowManager.focus();
    });

    fullAudioFolder = await createFolderInAppDocDir(Constants.audioFolder);
    fullImageFolder = await createFolderInAppDocDir(Constants.imagesFolder);
    fullHiveFolder = await createFolderInAppDocDir(Constants.dbFolder);
    fullTempFolder = await createFolderInAppDocDir(Constants.tempFolder);

    // TODO вызывает краш
    //   deviceId = await PlatformDeviceId.getDeviceId;
    //   log(deviceId!);
  }
  // Hive

  static const int hiveTypeRecord = 0;
  static const int hiveTypCourse = 1;
  static const int hiveTypeRecordCategory = 2;
  static const int hiveTypeUser = 3;
  static const int hiveTypeSubjectCategory = 4;
  static const int hiveTypeSubjects = 5;
  static const int hiveTypeCourseCategory = 6;
  static const int hiveTypeLang = 7;

  //Dio ------------------------

  static const bool debugMode = true;

  static const String hostHttp = 'http://';
  static const String hostUrl = 'api.moki.kz/';
  static const String baseUrl = '$hostHttp$hostUrl';

  //--------------------------------------- end Dio

  static const secureStorage = FlutterSecureStorage();
}

Future<String> createFolderInAppDocDir(String folderName) async {
  //Get this App Document Directory
  final Directory appDocDir = await getApplicationSupportDirectory();
  //App Document Directory + folder name
  final Directory appDocDirFolder =
      Directory('${appDocDir.path}\\$folderName\\');

  if (await appDocDirFolder.exists()) {
    //if folder already exists return path
    return appDocDirFolder.path;
  } else {
    //if folder not exists create folder and then return its path
    final Directory appDocDirNewFolder =
        await appDocDirFolder.create(recursive: true);
    return appDocDirNewFolder.path;
  }
}
