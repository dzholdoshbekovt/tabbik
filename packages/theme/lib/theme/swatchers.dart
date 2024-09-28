import 'package:flutter/material.dart';

class AppColorSwatch extends ColorSwatch<int> {
  const AppColorSwatch(super.primary, super.swatch);

  Color? get shade0 => this[0];
  Color? get shade10 => this[10];
  Color? get shade20 => this[20];
  Color? get shade30 => this[30];
  Color? get shade40 => this[40];
  Color? get shade45 => this[45];
  Color? get shade50 => this[50];
  Color? get shade60 => this[60];
  Color? get shade70 => this[70];
  Color? get shade80 => this[80];
  Color? get shade90 => this[90];
}

class ComponentColorSwatch extends ColorSwatch<String> {
  const ComponentColorSwatch(super.primary, super.swatch);

  Color get text => this['text']!;
  Color get bckgr => this['bckgr']!;
  Color get focused => this['focused']!;
  Color get alert => this['alert']!;
  Color get secondary => this['secondary']!;
  Color get disabled => this['disabled']!;
}
