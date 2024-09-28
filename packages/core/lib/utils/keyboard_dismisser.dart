import 'package:flutter/material.dart';

class KeyboardDismisser extends StatelessWidget {
  final Widget? child;
  const KeyboardDismisser({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
      },
      child: child,
    );
  }
}
