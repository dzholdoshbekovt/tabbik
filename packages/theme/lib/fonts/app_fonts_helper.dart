import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:theme/fonts/android_fonts.dart';
import 'package:theme/fonts/ios_fonts.dart';
import 'package:theme/fonts/swatchers.dart';

@lazySingleton
class AppFontsHelper {
  final AndroidFonts _androidfonts;
  final IosFonts _iosfonts;

  AppFontsHelper(this._androidfonts, this._iosfonts);

  AppFontSwatcher<TextStyle> get font {
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
      case TargetPlatform.iOS:
        return _iosfonts.fonts;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return _androidfonts.fonts;
    }
  }
}
