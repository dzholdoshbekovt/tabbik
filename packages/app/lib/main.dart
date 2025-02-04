import 'dart:async';
import 'package:app/config_main.dart';
import 'package:flutter/material.dart';
import 'app.dart';

FutureOr<void> main(configMain) async {
  configMain as ConfigMain;
  runApp(
    App(
      router: configMain.setupGoRoute(),
      localeDelegates: configMain.setupLocalizationDelegates(),
      localizations: configMain.getLocalizations(),
    ),
  );
}
