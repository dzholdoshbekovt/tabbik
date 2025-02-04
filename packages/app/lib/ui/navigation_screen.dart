import 'package:core/feature_resolver.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:theme/components/controllers.dart';
import 'package:theme/components/main.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  const ScaffoldWithNavBar({
    required this.navigationShell,
    required this.tabs,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;
  final List<BottomNavBarItem> tabs;

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  CustomMainThemeData? _theme;
  CustomControllersThemeData? _themeControllers;

  @override
  void didChangeDependencies() {
    _theme = Theme.of(context).extension<CustomMainThemeData>();
    _themeControllers =
        Theme.of(context).extension<CustomControllersThemeData>();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // switch (defaultTargetPlatform) {
    //   case TargetPlatform.iOS:
    //   case TargetPlatform.macOS:
    //     return CustomScaffold(
    //       body: Stack(
    //         alignment: Alignment.bottomCenter,
    //         children: [
    //           widget.navigationShell,
    //           CupertinoTheme(
    //             data: CupertinoTheme.of(context).copyWith(
    //                 textTheme: CupertinoTheme.of(context).textTheme.copyWith(
    //                       tabLabelTextStyle: AppFonts.font.xsSemibold,
    //                     )),
    //             child: CupertinoTabBar(
    //               activeColor: _theme?.accent,
    //               backgroundColor:
    //                   _theme?.white?.withOpacity(1), //kCupertinoBlurOpacity
    //               inactiveColor:
    //                   _theme?.secondary ?? CupertinoColors.inactiveGray,
    //               height: 60,
    //               items: widget.tabs.map((e) {
    //                 if (e.type == BottomNavBarItemType.qr) {
    //                   return BottomNavigationBarItem(
    //                     icon: Container(
    //                       padding: const EdgeInsets.all(6),
    //                       decoration: BoxDecoration(
    //                           shape: BoxShape.circle, color: _theme?.accent),
    //                       child: CustomIcon.icon(
    //                         e.icon,
    //                         color: _themeControllers?.label,
    //                         size: 27,
    //                       ),
    //                     ),
    //                     activeIcon: Container(
    //                       padding: const EdgeInsets.all(6),
    //                       decoration: BoxDecoration(
    //                           shape: BoxShape.circle, color: _theme?.accent),
    //                       child: CustomIcon.icon(
    //                         e.icon,
    //                         color: _themeControllers?.label,
    //                         size: 27,
    //                       ),
    //                     ),
    //                   );
    //                 }
    //                 return BottomNavigationBarItem(
    //                   icon: CustomIcon.icon(e.icon, color: _theme?.secondary),
    //                   activeIcon:
    //                       CustomIcon.icon(e.icon, color: _theme?.accent),
    //                   label: e.label,
    //                   tooltip: e.label,
    //                 );
    //               }).toList(),
    //               currentIndex: widget.navigationShell.currentIndex,
    //               onTap: (int index) => _onTap(context, index),
    //             ),
    //           ),
    //         ],
    //       ),
    //       backgroundColor:
    //           Theme.of(context).extension<CustomMainThemeData>()?.bckgr,
    //     );
    //   case TargetPlatform.linux:
    //   case TargetPlatform.android:
    //   case TargetPlatform.fuchsia:
    //   case TargetPlatform.windows:
    //     return PopScope(
    //       canPop: widget.navigationShell.currentIndex == 0,
    //       onPopInvoked: (didPop) {
    //         if (!didPop) {
    //           _onTap(context, 0);
    //         }
    //       },
    //       child: CustomScaffold(
    //         body: widget.navigationShell,
    //         backgroundColor: _theme?.white,
    //         bottomNavigationBar: BottomNavigationBar(
    //           backgroundColor: _theme?.white,
    //           selectedItemColor: _theme?.accent,
    //           selectedLabelStyle:
    //               AppFonts.font.xsBold.copyWith(color: _theme?.accent),
    //           unselectedLabelStyle:
    //               AppFonts.font.xsSemibold.copyWith(color: _theme?.secondary),
    //           items: widget.tabs.map((e) {
    //             if (e.type == BottomNavBarItemType.qr) {
    //               return BottomNavigationBarItem(
    //                   icon: Container(
    //                     margin: const EdgeInsets.only(top: 6),
    //                     padding: const EdgeInsets.all(6),
    //                     decoration: BoxDecoration(
    //                         shape: BoxShape.circle, color: _theme?.accent),
    //                     child: CustomIcon.icon(
    //                       e.icon,
    //                       color: _themeControllers?.label,
    //                       size: 27,
    //                     ),
    //                   ),
    //                   activeIcon: Container(
    //                     margin: const EdgeInsets.only(top: 6),
    //                     padding: const EdgeInsets.all(6),
    //                     decoration: BoxDecoration(
    //                         shape: BoxShape.circle, color: _theme?.accent),
    //                     child: CustomIcon.icon(
    //                       e.icon,
    //                       color: _themeControllers?.label,
    //                       size: 27,
    //                     ),
    //                   ),
    //                   label: e.label);
    //             }
    //             return BottomNavigationBarItem(
    //               backgroundColor: Colors.transparent,
    //               icon: CustomIcon.icon(e.icon, color: _theme?.secondary),
    //               activeIcon: CustomIcon.icon(e.icon, color: _theme?.accent),
    //               label: e.label,
    //               tooltip: e.label,
    //             );
    //           }).toList(),
    //           type: BottomNavigationBarType.fixed,
    //           currentIndex: widget.navigationShell.currentIndex,
    //           onTap: (int index) => _onTap(context, index),
    //         ),
    //       ),
    //     );
    // }
    return const SizedBox();
  }

  void _onTap(BuildContext context, int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}
