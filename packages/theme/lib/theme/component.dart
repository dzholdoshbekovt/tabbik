import 'package:flutter/material.dart';

abstract class ComponentTheme {
  AppComponentStyle? get primary => null;
  AppComponentStyle? get secondary => null;
  AppComponentStyle? get alert => null;
  AppComponentStyle? get tertiary => null;
}

abstract class AppComponentStyle {
  ComponentColorSwatcher? get color => null;
  ComponentSizeSwatcher<String>? get size => null;
}

class ComponentColorSwatcher<T> extends Color {
  final Map<T, Color> _swatch;
  final T primary;

  ComponentColorSwatcher(this.primary, this._swatch)
      : super(_swatch[primary]?.value ?? 0xFFFFFFFF);

  Color? operator [](T index) => _swatch[index];
}

class ComponentSizeSwatcher<T> extends Size {
  final Map<T, Size> _swatch;
  final T primary;
  ComponentSizeSwatcher(this.primary, this._swatch)
      : super(_swatch[primary]!.width, _swatch[primary]!.height);

  Size? operator [](T index) => _swatch[index];
}
