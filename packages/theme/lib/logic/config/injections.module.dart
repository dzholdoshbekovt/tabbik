//@GeneratedMicroModule;ThemePackageModule;package:theme/logic/config/injections.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:injectable/injectable.dart' as _i1;
import 'package:theme/fonts/android_fonts.dart' as _i3;
import 'package:theme/fonts/app_fonts_helper.dart' as _i5;
import 'package:theme/fonts/ios_fonts.dart' as _i4;

class ThemePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.AndroidFonts>(() => _i3.AndroidFonts());
    gh.lazySingleton<_i4.IosFonts>(() => _i4.IosFonts());
    gh.lazySingleton<_i5.AppFontsHelper>(() => _i5.AppFontsHelper(
          gh<_i3.AndroidFonts>(),
          gh<_i4.IosFonts>(),
        ));
  }
}
