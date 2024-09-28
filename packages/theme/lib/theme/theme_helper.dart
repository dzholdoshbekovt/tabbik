import 'package:flutter/material.dart';

enum ComponentStyle {
  primary,
  secondary,
  tertiary,
  alert,
}

enum ComponentType { A, B }

class AppSwatcher<T, P> {
  final Map<T, P> _swatch;

  const AppSwatcher(this._swatch);

  P? operator [](T index) => _swatch[index];
}

class AppShadow {
  final Color? color;
  final double? x;
  final double? y;
  final double? blur;
  final double? spread;

  const AppShadow({this.blur, this.color, this.spread, this.x, this.y});
}
