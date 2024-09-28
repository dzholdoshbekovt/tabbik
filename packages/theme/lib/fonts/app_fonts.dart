import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:theme/fonts/app_fonts_helper.dart';
import 'package:theme/fonts/swatchers.dart';

class AppFonts {
  AppFonts._();

  static AppFontSwatcher<TextStyle> get font => GetIt.I<AppFontsHelper>().font;
}
