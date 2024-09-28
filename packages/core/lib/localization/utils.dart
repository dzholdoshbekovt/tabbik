import 'package:flutter/material.dart';

String getFilePath({
  required Locale locale,
  String? packageName,
}) {
  String country = locale.countryCode != null ? '-${locale.countryCode}' : '';
  return packageName != null
      ? 'packages/$packageName/assets/localization/${locale.languageCode}$country.json'
      : 'assets/localization/${locale.languageCode}$country.json';
}
