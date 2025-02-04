import 'dart:async';
import 'package:core/logic/localization/locale_keys.g.dart';
import 'package:core/logic/provider/core_provider.dart';
import 'package:core/models/app_error.dart';
import 'package:core/models/token_model.dart';
import 'package:core/utils/extensions/core_extension.dart';
import 'package:core/utils/storage/secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class CoreApiHelper {
  static Future<RequestOptions> options(
    RequestOptions options,
  ) async {
    TokenModel? tokens;
    tokens = await SecureStorage.loadTokens();

    if (tokens?.accessToken != null) {
      options.headers['authorization'] = 'Bearer ${tokens!.accessToken}';
    }

    options.headers['Accept-Language'] = 'ru';
    return options;
  }

  static Future<RequestOptions> optionsAuth(RequestOptions options,
      {List<String>? ignoreUrlsJWT}) async {
    options.headers['Accept-Language'] = 'ru';
    return options;
  }

  static Future<Response> tokenExceptionWorker(DioException e) async {
    TokenModel? tokens = await SecureStorage.loadTokens();

    var provider = GetIt.I<CoreProvider>();

    TokenModel newToken;

    // if (tokens?.refreshToken != null) {
    try {
      newToken = const TokenModel();
    } catch (e) {
      throw AppException(type: ExceptionType.expiredToken);
    }
    // } else {
    //   throw AppException(type: ExceptionType.expiredToken);
    // }

    if (newToken.accessToken == null) {
      String? description;
      try {
        description = e.response?.data['description'] ?? '';
      } catch (e) {
        description = CoreLocaleKeys.error_system_label.trc();
      }
      throw AppException(type: ExceptionType.auth, message: description);
    }
    e.requestOptions.headers
        .update('authorization', (value) => 'Bearer ${newToken.accessToken}');

    var response = await Dio().request(
        '${e.requestOptions.baseUrl}${e.requestOptions.path}',
        data: e.requestOptions.data,
        queryParameters: e.requestOptions.queryParameters,
        options: Options(
            contentType: e.requestOptions.contentType,
            extra: e.requestOptions.extra,
            headers: e.requestOptions.headers,
            method: e.requestOptions.method,
            responseType: e.requestOptions.responseType));
    return response;
  }
}
