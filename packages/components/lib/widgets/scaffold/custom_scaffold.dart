import 'package:core/ui/multitouch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theme/components/main.dart';
import 'package:theme/fonts/app_fonts.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final ObstructingPreferredSizeWidget? cupertinoAppBar;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final bool enableMultiTouch;
  final bool resizeToAvoidBottomInset;
  const CustomScaffold(
      {super.key,
      required this.body,
      this.appBar,
      this.cupertinoAppBar,
      this.backgroundColor,
      this.bottomNavigationBar,
      this.enableMultiTouch = false,
      this.resizeToAvoidBottomInset = false});

  @override
  Widget build(BuildContext context) {
    Widget result = DefaultTextStyle(
      style: AppFonts.font.lSemibold.copyWith(
          color: Theme.of(context).extension<CustomMainThemeData>()?.primary),
      child: body,
    );
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        break;
      case TargetPlatform.windows:
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
        result = StretchingOverscrollIndicator(
            axisDirection: AxisDirection.down, child: result);
    }

    // if (Platform.isIOS) {
    //   return CupertinoPageScaffold(
    //     backgroundColor: backgroundColor,
    //     navigationBar: cupertinoAppBar,
    //     child: DefaultTextStyle(
    //       style: AppFonts.font.lSemibold.copyWith(
    //           color:
    //               Theme.of(context).extension<CustomMainThemeData>()?.primary),
    //       child: body,
    //     ),
    //   );
    // } else {
    return OnlyOnePointerRecognizerWidget(
      enable: enableMultiTouch,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar,
        bottomNavigationBar: bottomNavigationBar,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        body: result,
      ),
    );
    // }
  }
}
