import 'package:club/logic/constants/club_constants.dart';
import 'package:components/widgets/scaffold/custom_scaffold.dart';
import 'package:flutter/foundation.dart';
import 'package:core/router/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/components/main.dart';

const _kPath = '/club';

///DOTO Change route, screen, extra name

class ClubRoute extends ScreenRoute {
  ClubRoute({ClubExtra? extra})
      : super(RouteParams<ClubExtra>(_kPath, extra: extra));

  @override
  Future<T?> push<T extends Object?>(BuildContext context) {
    return GoRouter.of(context).push<T>(_kPath, extra: params.extra);
  }

  @override
  GoRoute get route => GoRoute(
        parentNavigatorKey: shellNavigator,
        path: params.path,
        name: params.name,
        pageBuilder: (context, state) {
          ClubExtra? extra = state.extra as ClubExtra?;
          switch (defaultTargetPlatform) {
            case TargetPlatform.iOS:
            case TargetPlatform.macOS:
              return CupertinoPage(
                title: 'Клубы',
                child: ClubScreen(extra: extra),
              );
            case TargetPlatform.android:
            case TargetPlatform.fuchsia:
            case TargetPlatform.linux:
            case TargetPlatform.windows:
              return MaterialPage(
                child: ClubScreen(extra: extra),
              );
          }
        },
      );
}

class ClubExtra {
  final String example;
  ClubExtra(this.example);
}

class ClubScreen extends StatefulWidget {
  final ClubExtra? extra;
  const ClubScreen({super.key, this.extra});

  @override
  State<ClubScreen> createState() => _ClubScreenState();
}

class _ClubScreenState extends State<ClubScreen> {
  CustomMainThemeData? _theme;

  @override
  void didChangeDependencies() {
    _theme = Theme.of(context).extension<CustomMainThemeData>() ?? _theme;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: _theme?.bckgr,
      body: const Center(child: Text('Clubs')),
    );
  }
}
