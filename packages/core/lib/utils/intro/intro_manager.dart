import 'package:core/utils/storage/app_storage.dart';
import 'package:flutter/material.dart';

enum Intros {
  cars,
  fines,
}

class IntroManager {
  static void checkIntro(
      Intros intro, VoidCallback onIntro, VoidCallback onNext) {
    bool result = AppStorage.instance.getValue<bool>(
        key: intro.getKey(), boxName: BoxNames.system, defaultValue: false)!;
    if (result) {
      onNext();
    } else {
      onIntro();
    }
  }

  static void deactivateIntro(Intros intro) {
    AppStorage.instance.setValue<bool>(
        key: intro.getKey(), value: true, boxName: BoxNames.system);
  }
}

class _IntroKeys {
  static const cars = 'intro_cars_key';
  static const fines = 'intro_fines_key';
}

extension _GetIntroKeys on Intros {
  String getKey() {
    switch (this) {
      case Intros.cars:
        return _IntroKeys.cars;
      case Intros.fines:
        return _IntroKeys.fines;
    }
  }
}
