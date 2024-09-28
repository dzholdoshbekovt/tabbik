import 'dart:io';

import 'package:core/logic/localization/locale_keys.g.dart';
import 'package:core/models/app_error.dart';
import 'package:core/utils/extensions/core_extension.dart';
import 'package:dio/dio.dart';

class ExceptionHandler {
  static bool _isInternetError(DioException err) =>
      (err.type == DioExceptionType.connectionError ||
          err.type == DioExceptionType.unknown) &&
      err.error != null &&
      err.error is SocketException &&
      (err.error as SocketException).message.contains('Failed host lookup');

  static AppException proccessAuthException(error) {
    if (error != null) {
      if (error is DioException) {
        if (_isInternetError(error)) {
          return AppException(
              message: CoreLocaleKeys.error_internet_label.trc(),
              type: ExceptionType.internet);
        } else if (error.response?.statusCode == 401) {
          return AppException(
            type: ExceptionType.auth,
            message: error.response?.data['message']['text'] ??
                CoreLocaleKeys.error_auth_label.trc(),
          );
        }
        if (error.type == DioExceptionType.sendTimeout ||
            error.type == DioExceptionType.receiveTimeout ||
            error.type == DioExceptionType.connectionTimeout) {
          return AppException(
            type: ExceptionType.timeout,
            message: CoreLocaleKeys.error_timeout_label.trc(),
          );
        }
        if ((error.response?.statusCode ?? 0) > 400 ||
            (error.response?.statusCode ?? 0) < 409) {
          return AppException(
            code: error.response?.data['message']['text'],
            type: ExceptionType.auth,
            message: error.response?.data['message']['text'] ??
                CoreLocaleKeys.error_auth_label.trc(),
          );
        }

        if (error.error != null && error.error is AppException) {
          return error.error as AppException;
        }

        if (error.type == DioExceptionType.badResponse) {
          return AppException(
            code: error.response?.data['message'],
            type: ExceptionType.server,
            message: error.response?.data['message']['text'] ??
                CoreLocaleKeys.error_server_label.trc(),
          );
        }
      } else if (error is AppException) {
        return error;
      }
    }
    return AppException(
      type: ExceptionType.system,
      message: CoreLocaleKeys.error_system_label.trc(),
    );
  }

  static AppException proccessException(error) {
    if (error != null) {
      if (error is DioException) {
        if (_isInternetError(error)) {
          return AppException(
              message: CoreLocaleKeys.error_internet_label.trc(),
              type: ExceptionType.internet);
        } else if (error.response?.statusCode == 401) {
          return AppException(
            type: ExceptionType.expiredToken,
            message: error.response?.data['description'] ??
                error.response?.data['message']['text'] ??
                error.response?.data['error_description'] ??
                CoreLocaleKeys.error_auth_label.trc(),
          );
        }
        if (error.type == DioExceptionType.sendTimeout ||
            error.type == DioExceptionType.receiveTimeout ||
            error.type == DioExceptionType.connectionTimeout) {
          return AppException(
            type: ExceptionType.timeout,
            message: CoreLocaleKeys.error_timeout_label.trc(),
          );
        }
        if (error.error != null && error.error is AppException) {
          return error.error as AppException;
        }

        if (error.type == DioExceptionType.badResponse) {
          String message;
          String? code;
          try {
            message = error.response?.data['description'] ??
                error.response?.data['message']['text'] ??
                error.response?.data['error_description'] ??
                CoreLocaleKeys.error_server_label.trc();
          } catch (e) {
            message = CoreLocaleKeys.error_server_label.trc();
          }
          try {
            code = error.response?.data['message']['text'];
          } catch (_) {}

          return AppException(
            code: code,
            type: ExceptionType.server,
            message: message,
          );
        }
      } else if (error is AppException) {
        return error;
      }
    }
    return AppException(
      type: ExceptionType.system,
      message: CoreLocaleKeys.error_system_label.trc(),
    );
  }
}
