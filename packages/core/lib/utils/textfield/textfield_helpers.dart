import 'package:flutter/material.dart';

class TextFieldHelper {
  static void changeFocus(
      BuildContext context, FocusNode? currentFocus, FocusNode? nextFocus) {
    currentFocus?.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
