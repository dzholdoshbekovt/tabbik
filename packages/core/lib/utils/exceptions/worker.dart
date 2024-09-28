import 'package:core/logic/localization/locale_keys.g.dart';
import 'package:core/models/app_error.dart';
import 'package:core/utils/extensions/core_extension.dart';
import 'package:core/utils/snackbar/snackbar.dart';
import 'package:core/utils/storage/secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ExceptionWorker {
  static Future<void> proccessException(dynamic e,
      {required BuildContext context}) async {
    if (e is DioException) {
      await proccessException(e.error, context: context);
    } else {
      if (e is AppException) {
        switch (e.type) {
          case ExceptionType.expiredPassword:
            await SecureStorage.clearAllData();

          case ExceptionType.expiredToken:
            await SecureStorage.clearAllData();
          case ExceptionType.auth:
          case ExceptionType.internet:
          case ExceptionType.other:
          case ExceptionType.server:
          case ExceptionType.system:
          case ExceptionType.timeout:
          default:
            if (e.message?.isNotEmpty == true) {
              AppSnackBar.showSnackBar(context, e.message!,
                  status: SnackBarStatuses.error);
            }
        }
      } else if (e is String) {
        AppSnackBar.showSnackBar(context, e, status: SnackBarStatuses.error);
      } else {
        AppSnackBar.showSnackBar(
            context, CoreLocaleKeys.error_system_label.trc(),
            status: SnackBarStatuses.error);
      }
    }
  }

  static String proccessStringExeption(dynamic e) {
    if (e is DioException) {
      return proccessStringExeption(e.error);
    } else {
      if (e is AppException) {
        switch (e.type) {
          case ExceptionType.expiredPassword:
          case ExceptionType.expiredToken:
          case ExceptionType.auth:
          case ExceptionType.internet:
          case ExceptionType.other:
          case ExceptionType.server:
          case ExceptionType.system:
          case ExceptionType.timeout:
          default:
            if (e.message?.isNotEmpty == true) {
              return e.message!;
            }
        }
      } else if (e is String) {
        return e;
      } else {
        return CoreLocaleKeys.error_system_label.trc();
      }
      return CoreLocaleKeys.error_system_label.trc();
    }
  }

  static ExceptionType proccessTypeExeption(dynamic e) {
    if (e is DioException) {
      return proccessTypeExeption(e.error);
    } else {
      if (e is AppException) {
        return e.type;
      } else {
        return ExceptionType.other;
      }
    }
  }
}
