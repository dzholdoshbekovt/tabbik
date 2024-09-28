import 'dart:io';

import 'package:flutter/material.dart';

class AppLocales {
  static const Locale kg = Locale('ky');
  static const Locale ru = Locale('ru');
  static const Locale en = Locale('en');

  static const List<Locale> supportedLocales = [ru, kg, en];

  static Locale getSystemLocale() {
    List<String> strings = Platform.localeName.split('_');
    if (strings.length == 2) {
      return Locale(strings.first);
    }
    return AppLocales.ru;
  }
}
