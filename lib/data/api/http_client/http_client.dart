import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:introbox/domain/models/token_pair.dart';

import '../../../domain/interfaces/i_auth_controller.dart';
import '../../../domain/locator/locator.dart';
import '../models/requests/register_request.dart';
import '../models/requests/request_confirmation.dart';
import '../models/requests/request_login.dart';
import 'i_api_request.dart';
import 'request_exception.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class DioClient {
  DioClient({bool useLocaleSettings = false}) {
    _baseUrl = 'https://introbox.app/api';

    // настройка использования разных языков
    if (useLocaleSettings) {
      _localeSettings = englishLocaleSettings;
    }
    _useLocaleSettings = useLocaleSettings;

    _initNewDioClient();
  }

  // ---------------------------------------------------------------------------
  Dio? _dio;
  late BaseOptions _dioOptions;

  // ---------------------------------------------------------------------------
  static const bool debugMode = true;

  static const String englishLocaleSettings = 'en-US,en;q=0.9,ru-RU';
  static const String russianLocaleSettings = 'ru-RU,ru;q=0.9,en-US';

  final IAuthController authenticateController = getIt<IAuthController>();

  String? _refreshToken;

  late final String _baseUrl;

  String get apiUrl => _baseUrl;

  // использование данных о языке в заголовке запроса
  late bool _useLocaleSettings;
  String? _localeSettings;
  Object? requestData;
  Map<String, dynamic>? contentTypeHeader;
  String? saveDirectory;

  // ---------------------------------------------------------------------------
  // инициализация HTTP-клиента с заданными настройками
  // и заголовком
  void _initNewDioClient({String accessToken = '', String? refreshToken}) {
    _dio?.interceptors.removeWhere((element) => true);

    _refreshToken = refreshToken;

    // собираем данные для заголовка
    final Map<String, Object?> headers = {};
    // установка токена
    if (accessToken.isNotEmpty) {
      headers[HttpHeaders.authorizationHeader] =
          _getTokenWithBearer(accessToken);
    }
    // установка выбранной локали
    if (_useLocaleSettings && (_localeSettings?.isNotEmpty ?? false)) {
      headers[HttpHeaders.acceptLanguageHeader] = _localeSettings;
    }

    _dioOptions = BaseOptions(
      baseUrl: _baseUrl,
      headers: headers,
    );
    _dio = Dio(_dioOptions);

    _dio?.interceptors.add(authErrorInterceptor());

    //  _dio?.interceptors.add(LogInterceptor(responseBody: true));
  }

  // ---------------------------------------------------------------------------
  // инициализация HTTP-клиента с указанными настройками заголовка
  void _updateNewDioWithHeader(Map<String, Object?> newHeaders) {
    if (_dio == null) return;

    _dio!.interceptors.removeWhere((element) => true);

    _dioOptions = _dio!.options.copyWith(headers: newHeaders);

    _dio = Dio(_dioOptions);

    _dio?.interceptors.add(authErrorInterceptor());
    _dio?.interceptors.add(LogInterceptor(requestBody: true));
  }

  // ---------------------------------------------------------------------------
  // установка выбранной локали
  // принимаются строки "RU", "Ru-ru", "ru, RU" и т.д.
  Future<void> setLocaleSettings(String newLocaleSettings) async {
    if (newLocaleSettings.toLowerCase().contains('ru')) {
      _localeSettings = russianLocaleSettings;
    } else {
      _localeSettings = englishLocaleSettings;
    }
    _useLocaleSettings = true;

    final newHeader = _dioOptions.headers;
    newHeader[HttpHeaders.acceptLanguageHeader] = _localeSettings;

    _updateNewDioWithHeader(newHeader);
  }

  // ---------------------------------------------------------------------------
  String _getTokenWithBearer(String token) {
    if (token.startsWith('Bearer ')) {
      return token;
    } else {
      return 'Bearer $token';
    }
  }

  // ---------------------------------------------------------------------------
  QueuedInterceptorsWrapper authErrorInterceptor() => QueuedInterceptorsWrapper(
        onResponse: (response, handler) {
          // _continuous401ErrorsCounter = 0;
          return handler.next(response);
        },
        onError: (dioError, handler) async {
          if (dioError.response?.statusCode == HttpStatus.forbidden) {
            print('dio 135');
            clearTokens();
            authenticateController.onAuthenticationFailed();
            handler.next(dioError);
            return;
          }
          // если поступила ошибка аутентификации
          if (dioError.response?.statusCode == HttpStatus.unauthorized &&
              (_refreshToken?.isNotEmpty ?? false)) {
            // запрашиваем новый токен
            final Map<String, Object?>? tokensPair = await _requestNewToken();

            if (tokensPair == null) {
              clearTokens();
              authenticateController.onAuthenticationFailed();
              handler.next(dioError);
              return;
            }

            // если токены получены - сохраняем в клиент и передаем слушателям
            String? receivedAccessToken;
            String? receivedRefreshToken;
            if (tokensPair.containsKey('access') &&
                tokensPair.containsKey('refresh')) {
              receivedAccessToken = '${tokensPair['access']}';
              receivedRefreshToken = '${tokensPair['refresh']}';

              _dioOptions.headers['authorization'] =
                  _getTokenWithBearer(receivedAccessToken);

              _refreshToken = receivedRefreshToken;
              await authenticateController.onAccessTokensUpdated(TokenPair(
                  accessToken: receivedAccessToken,
                  refreshToken: receivedRefreshToken));
            }

            // если токен был получен - пробуем повторить запрос
            // на котором поучили 401
            if (receivedAccessToken?.isNotEmpty ?? false) {
              if (contentTypeHeader != null) {
                _dioOptions.headers.addAll(contentTypeHeader!);
              }
              try {
                // only for VERIFY request - change token in DATA
                // final originalRequestData = dioError.requestOptions.data;
                FormData? newFormData;
                if (requestData.runtimeType == FormData) {
                  contentTypeHeader = {'Content-Type': 'multipart/form-data'};
                  Map<String, dynamic> newMap = {};
                  newMap.addEntries((requestData as FormData).fields);
                  for (final f in (requestData as FormData).files) {
                    final me = {
                      f.key: MultipartFile.fromFileSync(f.value.filename!,
                          filename: f.value.filename!)
                    };
                    newMap.addAll(me);
                  }
                  newMap.addEntries((requestData as FormData).files);

                  newFormData = FormData.fromMap(newMap);
                } else {
                  contentTypeHeader = null;
                }
                print('repeat request');
                final response = await _dio!.request(
                    dioError.requestOptions.path,
                    queryParameters: dioError.requestOptions.queryParameters,
                    data: requestData.runtimeType == FormData
                        ? newFormData
                        : requestData,
                    options: Options(
                      method: dioError.requestOptions.method,
                      headers: _dioOptions.headers,
                    ));
                handler.resolve(response);
                return;
              } on DioException catch (e) {
                if ((e.response?.statusCode ?? 0) == HttpStatus.forbidden) {
                  clearTokens();
                  authenticateController.onAuthenticationFailed();
                  handler.next(dioError);
                  return;
                } else {
                  print(e.toString());
                }
              } on Object {
                rethrow;
              }
            }
            handler.next(dioError);
            return;
          }
          handler.reject(dioError);
        },
      );

  // ---------------------------------------------------------------------------
  // обновление токена в отдельном клиенте
  Future<Map<String, Object?>?> _requestNewToken() async {
    print('refreshing token');
    if (_refreshToken?.isEmpty ?? true) {
      return null;
    }

    final Map<String, Object> body = <String, Object>{
      'refresh': _refreshToken!
    };
    final String url = '$_baseUrl/refresh_tokens/';

    try {
      final Response<String> response =
          await Dio(_dioOptions).post<String>(url, data: jsonEncode(body));
      print(response.data);

      if (debugMode) {
        _logger(url, response, body: body);
      }

      if (response.statusCode == 200 && (response.data?.isNotEmpty ?? false)) {
        final Map<String, Object?> data =
            jsonDecode(response.data!) as Map<String, Object?>;
        // если токены получены - сохраняем в клиент и передаем слушателям
        String? receivedAccessToken;
        String? receivedRefreshToken;
        if (data.containsKey('access') && data.containsKey('refresh')) {
          receivedAccessToken = '${data['access']}';
          receivedRefreshToken = '${data['refresh']}';

          _dioOptions.headers['authorization'] =
              _getTokenWithBearer(receivedAccessToken);

          _refreshToken = receivedRefreshToken;
          await authenticateController.onAccessTokensUpdated(TokenPair(
              accessToken: receivedAccessToken,
              refreshToken: receivedRefreshToken));
          setTokens(receivedAccessToken, receivedRefreshToken);
        }

        return data;
      }
    } on DioException catch (e) {
      if ((e.response?.statusCode ?? 0) == HttpStatus.forbidden) {
        return null;
      }
    } on Object {
      return null;
    }
    return null;
  }

  // ---------------------------------------------------------------------------
  void setTokens(String access, String refresh) {
    _initNewDioClient(accessToken: access, refreshToken: refresh);
    _refreshToken = refresh;
  }

  // ---------------------------------------------------------------------------
  void clearTokens() {
    setTokens('', '');
  }

  // ---------------------------------------------------------------------------
  void _logger(String url, Response<dynamic>? response, {Object? body}) {
    dev.log('V___________________________________');
    dev.log('> METHOD: ${response?.requestOptions.method ?? 'Unknown method'}');
    dev.log(
        '> HEADERS: ${response?.requestOptions.headers.toString() ?? 'Unknown headers'}');
    dev.log('> PATH: ${response?.requestOptions.path ?? url}');
    if (body != null) {
      if (body is FormData) {
        dev.log('> BODY: ${body.fields}');
      } else {
        dev.log('> BODY: $body');
      }
    }
    dev.log(
        '< STATUS: ${response?.statusCode?.toString() ?? 'Unknown statusCode'}');
    dev.log(
        '< RESPONSE: ${response?.data?.toString() ?? 'Response data is null'}');
    dev.log('^------------------------------------');
  }

  Future<void> downloadFile(String urlPath) async {
    if (saveDirectory == null) {
      if (await Permission.storage.request().isGranted) {
        Directory? downloadsDirectory = Platform.isAndroid
            ? await getExternalStorageDirectory()
            : await getApplicationDocumentsDirectory();
        saveDirectory = downloadsDirectory?.path;
      }
    }
    if (saveDirectory != null) {
      final downloadFileName = urlPath.split('/').last;
      final savePath = saveDirectory! + '/$downloadFileName';
      await _dio?.download(urlPath, savePath,
          onReceiveProgress: (received, total) {
        if (total != -1) {
          print((received / total * 100).toStringAsFixed(0) + "%");
          //you can build progressbar feature too
        }
      });
    }
  }

  // ---------------------------------------------------------------------------
  Future<Response<Object?>?> request(IApiRequest request) async {
    if (_dio == null) throw UnimplementedError('Dio is not initialized');

    final String url = '$_baseUrl${request.endPoint}';
    requestData = request.body;

    if (request is RequestRegister ||
        request is RequestLogin ||
        request is RequestConfirmation ||
        request.endPoint == '$_baseUrl/refresh_tokens/') {
    } else {
      if (request.formData != null) {
        final r = await _requestNewToken();
        if (r == null) {
          clearTokens();
          authenticateController.onAuthenticationFailed();

          return null;
        }

        _dioOptions.headers['Content-Type'] = 'multipart/form-data';
      } else {
        _dioOptions.headers['Content-Type'] = 'application/json';
      }
    }

    try {
      Response<Object> response;

      switch (request.methodType) {
        case AvailableApiMethods.get:
          print(url);
          request.queryParameters?.forEach((key, value) {
            print('$key: $value');
          });
          response =
              await _dio!.get(url, queryParameters: request.queryParameters);
          break;
        case AvailableApiMethods.post:
          final data = await request.formData ?? request.body;
          response = await _dio!.post<String>(
            url,
            data: data,
          );
          break;
        case AvailableApiMethods.put:
          final data = await request.formData ?? request.body;
          response = await _dio!.put<String>(url, data: data);
          break;
        case AvailableApiMethods.delete:
          response = await _dio!.delete<String>(url, data: request.body);
          break;
        case AvailableApiMethods.patch:
          response = await _dio!.patch<String>(url, data: request.body);
      }

      if (debugMode) {
        _logger(url, response, body: request.body);
      }

      return response;
    } on DioException catch (dioError, stackTrace) {
      print(dioError.response);
      if (debugMode) {
        _logger(url, dioError.response, body: request.body);
      }

      Map<String, Object?>? responseBody;
      String? responseValues;
      if (dioError.response?.data != null) {
        if ('${dioError.response?.data}'.isNotEmpty) {
          final jsonDecoded = jsonDecode(dioError.response!.data as String);
          if (jsonDecoded is Map) {
            responseBody = jsonDecoded as Map<String, Object?>;
          } else if (jsonDecoded is Iterable) {
            responseBody = Map<String, String>.fromEntries(jsonDecoded
                //ignore: avoid_types_on_closure_parameters
                .map((Object? e) => MapEntry<String, String>('', '$e')));
          }

          if (responseBody != null) {
            String errorText = '';
            responseBody.forEach((key, value) {
              if (value is String) {
                errorText = errorText + value + '\n';
              } else if (value is Map<String, Object?>) {
                value.forEach((key, value) {
                  if (value is String) {
                    errorText = errorText + value + '\n';
                  }
                });
              } else if (value is List<Object?>) {
                value.forEach((item) {
                  errorText = errorText + '$item\n';
                });
              }
            });
            if (errorText.isNotEmpty) {
              responseValues = errorText.trim();
            }
          }
        }
      }
      Error.throwWithStackTrace(
          RequestException(
            httpStatusCode: dioError.response?.statusCode ?? 0,
            response: responseBody,
            responseValues: responseValues,
            requestPath: dioError.requestOptions.path,
            requestData: dioError.requestOptions.data,
            requestMethod: dioError.requestOptions.method,
          ),
          stackTrace);
    } on Object {
      rethrow;
    }
  }
}
