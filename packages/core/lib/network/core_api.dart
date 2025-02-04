import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:core/config/app_config.dart';
import 'package:core/constants/settings.dart';
import 'package:core/models/app_error.dart';
import 'package:core/network/helper.dart';
import 'package:core/network/logger.dart';
import 'package:core/utils/exceptions/hadler.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class CoreApi {
  late Dio _base;
  late Dio _auth;
  late Dio _authUpload;

  Dio get base => _base;
  Dio get authUpload => _authUpload;
  Dio get auth => _auth;

  CoreApi(Config config) {
    init(config.baseUrl);
  }

  final QueuedInterceptorsWrapper _baseInterceptor = QueuedInterceptorsWrapper(
    onRequest: (options, handler) async {
      RequestOptions headedOptions = await CoreApiHelper.options(options);
      handler.next(headedOptions);
    },
    onResponse: (e, handler) {
      handler.next(e);
    },
    onError: (e, handler) async {
      if (e.response?.statusCode == 401) {
        Response? response;
        try {
          response = await CoreApiHelper.tokenExceptionWorker(e);
        } catch (err) {
          handler.reject(DioException(
              error: ExceptionHandler.proccessException(err),
              requestOptions: e.requestOptions));
          return;
        }
        if (response.statusCode.toString().startsWith('2') == true) {
          if (response.data is String) {
            response.data = jsonDecode(response.data);
          }
          if (response.data['status'] == 'OK') {
            response.data = response.data['body'];
            handler.resolve(response);
            return;
          } else {
            DioException error = DioException(
                requestOptions: e.requestOptions,
                error: AppException(
                    message: response.data['message']['text'].toString()));
            handler.reject(error);
            return;
          }
        } else {
          handler.reject(DioException(
              error: ExceptionHandler.proccessException(e),
              requestOptions: e.requestOptions));
          return;
        }
      }
      try {
        throw ExceptionHandler.proccessException(e);
      } catch (error) {
        handler.reject(
            DioException(error: error, requestOptions: e.requestOptions));
      }
    },
  );

  final QueuedInterceptorsWrapper _authInterceptor = QueuedInterceptorsWrapper(
    onRequest: (options, handler) async {
      RequestOptions headedOptions = await CoreApiHelper.optionsAuth(options);
      handler.next(headedOptions);
    },
    onResponse: (e, handler) {
      handler.next(e);
    },
    onError: (e, handler) {
      try {
        throw ExceptionHandler.proccessAuthException(e);
      } catch (error) {
        handler.reject(DioException(
            error: error,
            requestOptions: e.requestOptions,
            response: e.response));
      }
    },
  );

  final PrettyDioLogger _loggerInterceptor = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    request: true,
    responseHeader: true,
    error: true,
    compact: true,
    // maxWidth: 90,
    logPrint: (object) {
      log(object.toString(), name: 'http');
    },
  );

  Future<void> init(String baseUrl) async {
    _base = Dio();
    _auth = Dio();
    _authUpload = Dio();

    _base.options = BaseOptions(
      baseUrl: baseUrl,
      contentType: ContentType.json.mimeType,
      sendTimeout: SettingsConstants.sendTimeout,
      connectTimeout: SettingsConstants.connectTimeout,
      receiveTimeout: SettingsConstants.receiveTimeout,
    );

    _auth.options = BaseOptions(
      baseUrl: baseUrl,
      contentType: ContentType.json.mimeType,
      sendTimeout: SettingsConstants.sendTimeout,
      connectTimeout: SettingsConstants.connectTimeout,
      receiveTimeout: SettingsConstants.receiveTimeout,
    );

    _authUpload.options = BaseOptions(
      baseUrl: baseUrl,
      sendTimeout: const Duration(minutes: 5),
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 5),
    );

    _authUpload.options.contentType = Headers.multipartFormDataContentType;
    _authUpload.interceptors.add(_loggerInterceptor);
    _authUpload.interceptors.add(_authInterceptor);

    _base.options.contentType = Headers.jsonContentType;
    _base.interceptors.add(_loggerInterceptor);
    _base.interceptors.add(_baseInterceptor);

    _auth.options.contentType = Headers.jsonContentType;
    _auth.interceptors.add(_loggerInterceptor);
    _auth.interceptors.add(_authInterceptor);
  }
}
