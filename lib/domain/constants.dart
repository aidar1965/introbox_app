import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Constants {
  static const bool debugMode = true;

  static const String hostHttp = 'http://';
  static const String hostUrl = 'api.moki.kz/';
  static const String baseUrl = '$hostHttp$hostUrl';

  //--------------------------------------- end Dio

  static const secureStorage = FlutterSecureStorage();
}
