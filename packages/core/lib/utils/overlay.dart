import 'package:flutter/material.dart';
import 'package:theme/components/main.dart';

class LoadingOverlay {
  static OverlayEntry? _instanceOfEntry;

  static void showLoadingOverlay(BuildContext context) {
    removeLoadingOverlay();
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
    _instanceOfEntry = OverlayEntry(
        builder: (context) => Positioned(
              left: 0,
              top: 0,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .extension<CustomMainThemeData>()
                      ?.white
                      ?.withOpacity(0.88),
                ),
                child: const Center(
                    child: SizedBox(
                  width: 40,
                  height: 40,
                  child: CircularProgressIndicator(),
                )),
              ),
            ));
    Overlay.of(context).insert(_instanceOfEntry!);
  }

  static void removeLoadingOverlay() {
    if (_instanceOfEntry != null) {
      _instanceOfEntry?.remove();
      _instanceOfEntry = null;
    }
  }
}
