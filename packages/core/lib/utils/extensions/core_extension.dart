import 'package:core/localization/core_localization.dart';
import 'package:core/settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

extension StringLerp on String {
  String lerp(String a, String b, double t) {
    if (t > 0.5) {
      return b;
    }
    return a;
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension StringLocalization on String {
  String trc({Map<String, String>? values}) {
    return CoreLocalization.instance.tr(this, values: values);
  }
}

extension PopUntil on GoRouter {
  void popUntil(String path) {
    String currentRoute =
        routerDelegate.currentConfiguration.matches.last.matchedLocation;
    while (currentRoute != path) {
      if (!canPop()) return;
      pop();
    }
  }
}

extension FormatWithLocale on DateTime? {
  String? localization(BuildContext context, String format) {
    var currentLocale = AppSettings.of(context)?.settings.locale;
    return this != null
        ? DateFormat(format, currentLocale.toString()).format(this!)
        : null;
  }
}
