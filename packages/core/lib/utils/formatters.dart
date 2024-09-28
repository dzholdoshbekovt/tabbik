import 'package:flutter/services.dart';

class Formatters {
  static TextInputFormatter maxLength(int value) {
    return TextInputFormatter.withFunction((oldValue, newValue) =>
        newValue.text.length <= value ? newValue : oldValue);
  }

  static TextInputFormatter toUpperCase() {
    return TextInputFormatter.withFunction((oldValue, newValue) {
      if (newValue.text.length >= oldValue.text.length) {
        return TextEditingValue(
          text: newValue.text.toUpperCase(),
          selection: newValue.selection,
        );
      }
      return newValue;
    });
  }
}
