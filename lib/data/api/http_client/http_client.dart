import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:io';

import 'package:archive/archive.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:moki_tutor/data/api/http_client/request_methods.dart';
import 'package:moki_tutor/data/dto/user_dto.dart';
import 'package:moki_tutor/data/mapper/http_data_mapper.dart';
import 'package:path/path.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:http_parser/src/media_type.dart';

import 'package:moki_tutor/domain/interfaces/i_api.dart';
import 'package:moki_tutor/domain/models/user.dart';
import 'package:nanoid/nanoid.dart';
import 'package:path/path.dart' as p;

import '../../../domain/constants.dart';
import '../../../domain/models/auth_token.dart';
import '../../../domain/models/course.dart';
import '../../../domain/models/subject.dart';
import '../../dto/course_dto.dart';
import '../request_exception.dart';
import '../../common_finctions/zip.dart' as zip;
import 'i_api_request.dart';

class DioClient extends ChangeNotifier {
  Dio? _dio;
  late BaseOptions _dioOptions;
  //path to api folder at server
  static const String _baseUrl = Constants.baseUrl;
  // secure storage for storing token
  static const _secureStorage = Constants.secureStorage;

  // path to endpoint to refresh token
  static const String _authTokenRefreshRoute = 'tutor/auth/refresh_token/';
  // path to endpoint that sends otp on login with SMS
  static const String _otpRequestRoute = 'tutor/auth/otp/';
  // path to endpoint to login using phone number and SMS that user receives
  static const String _loginWithOtpRoute = 'tutor/auth/login_with_sms/';
  // path to endpoint tu upload user's photo
  static const String _tutorImageUploadRoute = 'tutor/profile/upload_image/';
  // path to endpoint to update users details, such as name, family etc
  static const String _updateUserRoute = 'tutor/profile/update_user/';
  // key for secure storage to keep token of the user
  static const String _authTokenKey = 'token';
  // token of the user for authentication according to JWT auth flow

  static const String _coursesRoute = 'tutor/courses/';

  static const String _subjectRoute = 'tutor/subject/';

  AuthToken? token;
  // user data
  User? _user;
  // class for converting data received from server to classes defined in the app
  @override
  HttpDataMapper? mapper = HttpDataMapper();
  // getter of the user, to have access from user repository with ChangeNotifier
  @override
  User? get user => _user;
  //variable that is used in method refreshToken()
  bool isRefreshing = false;
  // When user starts app, when Dio is initialized we need to refresh tokens,
  // method refreshToken is called and isResreshed is set true, so when we reinit Dio,
  //we dont need to call refreshToken method again

  dynamic requestData;

  bool isFirstLoad = true;

  bool isLocked = false;

  bool largeUpload = false;

  List<MapEntry<String, MultipartFileExtended>> requestMapEntry = [];

  @override
  Future<void> clearToken() async {
    await _secureStorage.delete(key: _authTokenKey);
    token = null;
    // _initDioClient(token);
  }

  @override
  void addUserListener(Function() listener) => addListener(listener);

  @override
  void removeUserListener(Function() listener) => removeListener(listener);

  @override
  void setUser(User? user) {
    _user = user;
  }

  // ---------------------------------------------------------------------------
  @override
  Future<void> initDioClient() async {
    // remove old interceptors
    _dio?.interceptors.removeWhere((element) => true);
    // at resume or start app token is null and we should check it in secure storage
    //if (token == null) {
    String? tokenString = await _secureStorage.read(key: _authTokenKey);
    // receive token from tokenString
    if (tokenString != null) {
      token = AuthToken.parse(tokenString);
    }
    // }
    // init Dio options
    _dioOptions = BaseOptions(
      // if user logged in every request shoud send in headers access token in order to confirm user
      // such requests as login and otp requests are made without such headers
      headers: token != null
          ? {
              'Authorization': 'Bearer ${token!.accessToken}',
              'Content-Type': 'multipart/form-data;  charset=UTF-8',
              'DeviceId': 'Windows'
            }
          : {
              'DeviceId': 'Windows',
              'Content-Type': 'multipart/form-data',
            },
      baseUrl: _baseUrl,
      connectTimeout: 5000,
      receiveTimeout: largeUpload ? 300000 : 25000,
    );
    _dio = Dio(_dioOptions)
      // display logs of requests in terminal
      ..interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
          compact: true,
          maxWidth: 90))
      ..interceptors.add(requestInterceptor());

    // _dio!.interceptors.add(RetryInterceptor(
    //   dio: _dio!,
    //   retries: 3,
    //   retryableExtraStatuses: {401},
    // ));

    if (token != null) {
      // refresh token if app is resumed or started
      if (isFirstLoad) {
        await refreshToken();
      }

      // set minimum period for access token expiration
      final expiresIn = token!.expiresIn ?? 1800000;
      // refreah token before 2 minutes it expires
      Future.delayed(Duration(milliseconds: expiresIn - 120000), () async {
        //  var sec = expiresIn / 1000 / 60;
        //  dev.log(sec.toString());
        //  dev.log(DateTime.now().toString());
        if (isLocked == false) {
          await refreshToken();
        }
      });
    } else {
      // if there is no token in secure storage, we shoud clear tokens, set user to null and
      // notify userRepository that user is null in order to redirect to login page
      _user = null;

      notifyListeners();
    }
  }

  // ---------------------------------------------------------------------------
  QueuedInterceptorsWrapper requestInterceptor() => QueuedInterceptorsWrapper(
        onRequest: ((options, handler) {
          //dev.log(options.headers.toString());
          handler.next(options);
        }),
        onResponse: ((response, handler) async {
          isLocked == false;
          // server response of authorized user should contain in headers
          // refreshed access and refreeahed tokens that we should save to
          // secure storage
          if (response.headers['tokens'] != null) {
            // In my particular case server response is the following

            //  Headers
            //  x-powered-by: [PHP/7.3.33, PleskLin]
            //  connection: [keep-alive]
            //  content-type: [application/json]
            //  transfer-encoding: [chunked]
            //  date: [Fri, 12 Aug 2022 10:37:43 GMT]
            //tokens:
            // [{"status":true,"jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbW9raS5rei
            // IsImFjY2Vzc190b2tlbiI6IjcyNjE3NjQ2LTE4NTAtOTQ0Mi03M2ZhLTc2MzcwYjhjOTNlYyIsInJlZnJlc2hfdG9r
            // ZW4iOiJlNWFlYWRkZC01NzZhLTg2ZWItNGIzMi05MGQ2NTIzN2FmODMiLCJleHBpcmVzX2luIjoxMjAwMDAwfQ.ds1
            // zyVjYHlZ8Zed6d-jpfcbcf4vCfT5e3htnTwxSHCY"}]
            //  server: [nginx]

            // so, we should take the first value of tokens to receive tokens from JWT

            var tokens = response.headers['tokens'];
            // save tokens from response to secure storage
            await _saveUserDataFromJWT(responseData: jsonDecode(tokens!.first));
          }
          return handler.next(response);
        }),
        onError: (err, errorHandler) async {
          isLocked = false;
          if (err.response != null) {
            switch (err.response?.statusCode) {
              case 401:
                // if access token expires the server returns 401 status, so we shoild refresh token and
                // repeat the request
                if (_user != null) {
                  await refreshToken();

                  // https://github.com/flutterchina/dio/issues/482
                  if (err.requestOptions.data is FormData) {
                    FormData newFormData = FormData();

                    newFormData.fields.addAll(err.requestOptions.data.fields);

                    err.requestOptions.data.files.forEach((f) {
                      newFormData.files.add(MapEntry(
                          f.key,
                          MultipartFileExtended.fromFileSync(
                              f.value.filePath)));
                    });

                    requestData = newFormData;

                    await _dio!
                        .request(
                      err.requestOptions.path,
                      data: requestData,
                      // options: Options(
                      //     validateStatus: (_) => true,
                      //     method: err.requestOptions.method,
                      //     headers: token != null
                      //         ? {
                      //             'Authorization':
                      //                 'Bearer ${token!.accessToken}',
                      //             'Content-Type': 'multipart/form-data'
                      //           }
                      //         : null,
                      //     responseType: err.requestOptions.responseType,
                      //     contentType: err.requestOptions.contentType,
                      //     receiveTimeout: err.requestOptions.receiveTimeout),
                    )
                        .then((resp) async {
                      dev.log(resp.statusCode.toString());
                      if (resp.statusCode == 401 || resp.statusCode == 403) {
                        _user = null;
                        await clearToken();
                        notifyListeners();
                        return;
                      }
                    });
                    return errorHandler.next(err);
                    // return;
                  }
                }

                return errorHandler.next(err);
              // if refresh token is invalid we clear user and notify user repository
              case 403:
                _user = null;
                await clearToken();
                notifyListeners();
                return;

              default:
                break;
            }
            if (err.response!.statusCode != 401) {
              errorHandler.next(err);
            }
          }
          // else if (err.error is SocketException) {
          //   dev.log('no connection');
          // }
        },
      );
  // // ---------------------------------------------------------------------------
  // Future<Response<Object?>?> _request(
  //     {required _Methods method, required String url, Object? body}) async {
  //   if (_dio == null) throw UnimplementedError('Dio is not initialized');
  //   isLocked = true; // при долгом запросе чтобы не было обновления токенов
  //   dev.log(_dioOptions.headers.toString());
  //   try {
  //     Response<String> response;

  //     switch (method) {
  //       case _Methods.get:
  //         response = await _dio!.get<String>(url);
  //         break;
  //       case _Methods.post:
  //         response = await _dio!.post<String>(url, data: body);
  //         break;
  //       case _Methods.put:
  //         response = await _dio!.put<String>(url, data: body);
  //         break;
  //       case _Methods.delete:
  //         response = await _dio!.delete<String>(url, data: body);
  //         break;
  //       case _Methods.patch:
  //         response = await _dio!.patch<String>(url, data: body);
  //         break;
  //     }

  //     return response;
  //   } on DioError catch (dioError) {
  //     dev.log(dioError.requestOptions.headers.toString());
  //     Map<String, Object?>? responseBody;
  //     String? responseValues;
  //     if (dioError.response?.data != null) {
  //       if ('${dioError.response?.data}'.isNotEmpty) {
  //         responseBody = jsonDecode(dioError.response!.data as String)
  //             as Map<String, Object?>;

  //         String errorText = '';
  //         responseBody.forEach((key, value) {
  //           if (value is String) {
  //             errorText = '$errorText$value\\n';
  //           } else if (value is Map<String, Object?>) {
  //             value.forEach((key, value) {
  //               if (value is String) {
  //                 errorText = '$errorText$value\\n';
  //               }
  //             });
  //           } else if (value is List<Object?>) {
  //             for (final item in value) {
  //               errorText = '$errorText$item\\n';
  //             }
  //           }
  //         });
  //         if (errorText.isNotEmpty) {
  //           responseValues = errorText;
  //         }
  //       }
  //     }
  //     isLocked = false;
  //     dev.log(dioError.response?.statusCode.toString() ??
  //         'undefined error status code');
  //     // throw RequestException(
  //     //   httpStatusCode: dioError.response?.statusCode ?? 0,
  //     //   response: responseBody,
  //     //   responseValues: responseValues,
  //     // );
  //     return dioError.response;
  //   } on Exception catch (_) {
  //     isLocked = false;
  //     rethrow;
  //   }
  // }

  //-------------------------------------

  // ---------------------------------------------------------------------------
  Future<Response<Object?>?> request(IApiRequest request) async {
    if (_dio == null) throw UnimplementedError('Dio is not initialized');

    final String url = '$_baseUrl${request.endPoint}';
    try {
      Response<String> response;

      switch (request.methodType) {
        case AvailableApiMethods.get:
          response = await _dio!.get<String>(url);
          break;
        case AvailableApiMethods.post:
          response = await _dio!.post<String>(url, data: request.body);
          break;
        case AvailableApiMethods.put:
          response = await _dio!.put<String>(url, data: request.body);
          break;
        case AvailableApiMethods.delete:
          response = await _dio!.delete<String>(url, data: request.body);
          break;
        case AvailableApiMethods.patch:
          response = await _dio!.patch<String>(url, data: request.body);
          break;
      }

      return response;
    } on DioError catch (dioError, stackTrace) {
      Map<String, Object?>? responseBody;
      String? responseValues;
      if (dioError.response?.data != null) {
        if ('${dioError.response?.data}'.isNotEmpty) {
          Object? jsonDecoded = jsonDecode(dioError.response!.data as String);
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
                errorText = '$errorText$value\n';
              } else if (value is Map<String, Object?>) {
                value.forEach((key, value) {
                  if (value is String) {
                    errorText = '$errorText$value\n';
                  }
                });
              } else if (value is List<Object?>) {
                value.forEach((item) {
                  errorText = '$errorText$item\n';
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

  //----------------------------------------------------------------------------

  Future<void> refreshToken() async {
// //     try {
// //       // in case refreshing is in process, it could be if we are making request and at the same time we have
// //       // scheduled refresh
// //       if (isRefreshing) return;
// //       isRefreshing = true;

// //       Response<Object?>? response = await _request(
// //           method: _Methods.post,
// //           url: _authTokenRefreshRoute,
// //           body: FormData.fromMap({
// //             'refresh_token': token!.refreshToken,
// //           }));

// // // In my particular case response gives JWT in body in the following format, so we shoul wirk with it
// // // Body
// // // {"status":true,"jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbW9raS5reiI
// // // sImFjY2Vzc190b2tlbiI6IjZlODJmNTQzLTI2OTgtNzc3MS03ZWYyLTE4MmJlMjZhMjRlZiIsInJlZnJlc2hfdG9rZ
// // // W4iOiI2YTcxMmIwMy1mYjkzLWQxZGQtYjI3Mi0wY2FkMzcxZTc0ZGQiLCJleHBpcmVzX2luIjoxMjAwMDAwfQ.tjyh
// // // NFodQxLFI0Yv2ykb3yuzUeJmbCalHBOJXAjxvrM"}

// //       var responseData = jsonDecode(response!.data as String);
// //       await _saveUserDataFromJWT(responseData: responseData);

// //       isRefreshing = false;
// //     } catch (error) {
// //       // await clearToken();
// //       // _user = null;
// //       // notifyListeners();

// //       isRefreshing = false;
// //     }
//     isFirstLoad = false;
  }

  // ---------------------------------------------------------------------------

  @override
  Future<String> otpRequest({required bodyMap}) async {
    // await _request(
    //     method: _Methods.post,
    //     url: _otpRequestRoute,
    //     body: FormData.fromMap(bodyMap));
    return '1234';
  }

  // ---------------------------------------------------------------------------

  @override
  Future<void> loginWithOtp({required bodyMap}) async {
    // Response<Object?>? response = await _request(
    //     method: _Methods.post,
    //     url: _loginWithOtpRoute,
    //     body: FormData.fromMap(bodyMap));
    // if (response == null) {
    //   return;
    // }
    // if (response.data == null) {
    //   return;
    // }

    // var responseData = jsonDecode(response.data as String);
    // await _saveUserDataFromJWT(responseData: responseData);
  }

  // ---------------------------------------------------------------------------

  Future<void> _saveUserDataFromJWT({
    required Map<String, dynamic> responseData,
  }) async {
    // bool responseStatus = responseData['status'];
    // if (responseStatus == true) {
    //   if (responseData['jwt'] != null) {
    //     String jwt = responseData['jwt'];
    //     Map<String, dynamic> payload = JwtDecoder.decode(jwt);
    //     if (payload['tutor'] != null) {
    //       Map<String, dynamic> tutorData = payload['tutor'];

    //       _user = mapper!.mapUser(UserDto.fromJson(tutorData));

    //       notifyListeners();
    //     }
    //     token = AuthToken(
    //         accessToken: payload['access_token'],
    //         refreshToken: payload['refresh_token'],
    //         expiresIn: payload['expires_in']);
    //     //  dev.log('refresh token: ${token!.refreshToken}');
    //     dev.log('saved access token: ${token!.accessToken}');

    //     await _secureStorage.write(
    //         key: _authTokenKey,
    //         value: jsonEncode({
    //           'accessToken': payload['access_token'],
    //           'refreshToken': payload['refresh_token'],
    //           'expiresIn': payload['expires_in']
    //         }));
    //     await initDioClient();
    //   }
    // }
  }

  // ---------------------------------------------------------------------------

  @override
  Future<void> updateUser({required Map<String, Object?> bodyMap}) async {
    // await _request(
    //     method: _Methods.post,
    //     url: _updateUserRoute,
    //     body: FormData.fromMap(bodyMap));

    // _user = user;
    // notifyListeners();
  }

  // ---------------------------------------------------------------------------

  @override
  Future<void> uploadUserImage({required Map<String, Object> bodyMap}) async {
    // await _request(
    //   method: _Methods.post,
    //   url: _tutorImageUploadRoute,
    //   body: bodyMap,
    // );
  }

  @override
  Future<void> publishCourse({required Map<String, Object?> bodyMap}) async {
    await refreshToken();

    // await _request(
    //     method: _Methods.post,
    //     url: _coursesRoute,
    //     body: FormData.fromMap(bodyMap));
  }

  Future<void> uploadSubject(Subject subject) async {
    largeUpload = true;
    var formData = FormData();
    Map<String, dynamic> formMap = {};

    // formMap['id'] = subject.id;
    // for (var record in subject.records) {
    //   formData.files.add(MapEntry(
    //       'audios[]', MultipartFileExtended.fromFileSync(record.audioPath)));

    //   formData.files.add(MapEntry(
    //       'images[]', MultipartFileExtended.fromFileSync(record.imagePath)));
    //   await _request(method: _Methods.post, url: _subjectRoute, body: formData);
    // }
    // largeUpload = false;
  }

  @override
  Future<List<Course>> getPublishedCourses() async {
    List<Course>? courses = [];
    // Response<Object?>? response = await _request(
    //   method: _Methods.get,
    //   url: _coursesRoute,
    // );

    // final Iterable<Object?> deserializedData =
    //     jsonDecode('${response?.data}') as Iterable<Object?>;

    // courses = deserializedData
    //     .map((e) => CourseDto.fromJson(e!))
    //     .map(mapper!.mapCourse)
    //     .toList();
    return courses;
  }
}

class MultipartFileExtended extends MultipartFile {
  final String filePath; //this one!

  MultipartFileExtended(
    Stream<List<int>> stream,
    length, {
    filename,
    required this.filePath,
    contentType,
  }) : super(stream, length, filename: filename, contentType: contentType);

  static MultipartFileExtended fromFileSync(
    String filePath, {
    String? filename,
    MediaType? contentType,
  }) =>
      multipartFileFromPathSync(filePath,
          filename: filename, contentType: contentType);
}

MultipartFileExtended multipartFileFromPathSync(
  String filePath, {
  String? filename,
  MediaType? contentType,
}) {
  filename ??= p.basename(filePath);
  var file = File(filePath);
  var length = file.lengthSync();
  var stream = file.openRead();
  return MultipartFileExtended(
    stream,
    length,
    filename: filename,
    contentType: contentType,
    filePath: filePath,
  );
}
