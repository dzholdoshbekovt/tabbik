import 'package:auth/logic/bloc/module_bloc.dart';
import 'package:auth/logic/constants/assets.dart';
import 'package:auth/logic/constants/signin.dart';
import 'package:auth/logic/models/token_convert.dart';
import 'package:auth/logic/provider/module_provider.dart';
import 'package:auth/logic/repositories/impl/api_module_repository.dart';
import 'package:auth/logic/repositories/module_repository.dart';
import 'package:components/widgets/custom_button.dart';
import 'package:core/config/app_config.dart';
import 'package:core/network/core_api.dart';
import 'package:flutter/foundation.dart';
import 'package:components/widgets/scaffold/custom_scaffold.dart';
import 'package:core/router/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/components/main.dart';
import 'package:theme/fonts/app_fonts.dart';

const _kPath = '/auth';

class AuthRoute extends ScreenRoute {
  AuthRoute({AuthExtra? extra})
      : super(RouteParams<AuthExtra>(_kPath, extra: extra));

  @override
  Future<T?> push<T extends Object?>(BuildContext context) {
    return GoRouter.of(context).push<T>(_kPath, extra: params.extra);
  }

  @override
  GoRoute get route => GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: params.path,
        name: params.name,
        pageBuilder: (context, state) {
          AuthExtra? extra = state.extra as AuthExtra?;
          Widget result = BlocProvider(
            create: (context) => GetIt.I<ModuleBloc>(),
            child: AuthScreen(extra: extra),
          );
          switch (defaultTargetPlatform) {
            case TargetPlatform.iOS:
            case TargetPlatform.macOS:
              return CupertinoPage(
                title: '',
                child: result,
              );
            case TargetPlatform.android:
            case TargetPlatform.fuchsia:
            case TargetPlatform.linux:
            case TargetPlatform.windows:
              return MaterialPage(
                child: result,
              );
          }
        },
      );
}

class AuthExtra {
  final String example;
  AuthExtra(this.example);
}

class AuthScreen extends StatefulWidget {
  final AuthExtra? extra;
  const AuthScreen({super.key, this.extra});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
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
      body: BlocListener<ModuleBloc, ModuleState>(
          listener: (context, state) {
            state.whenOrNull(
              loadingGoogleSignIn: () =>
                  const CircularProgressIndicator.adaptive(),
              successGoogleSignIn: (data) {
                BlocProvider.of<ModuleBloc>(context).add(
                  ModuleEvent.convertToken(
                    TokenConvertPayload(
                      grantType: kGrantType,
                      clientId: kClientId,
                      backend: kBackend,
                      clientSecret: kClientSecret,
                      token: data,
                    ),
                  ),
                );
              },
              errorGoogleSignIn: (err) =>
                  ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(err),
                ),
              ),
              successConvertToken: (data) {
                print('FUCK ${data.accessToken}');
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 3),
                Image.asset(Assets.tabbikLogo),
                const Spacer(),
                Text.rich(
                  TextSpan(
                    text: 'Hey there,\n',
                    style: AppFonts.font.sRegular,
                    children: [
                      TextSpan(
                        text: 'Welcome Back',
                        style: AppFonts.font.header1,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                CustomButton(
                  title: 'Continue with Google',
                  //TODO change to CustomIcons
                  suffixIcon: Icons.circle_notifications,
                  onTap: () {
                    BlocProvider.of<ModuleBloc>(context)
                        .add(const ModuleEvent.signIn());
                  },
                ),
                const Spacer(),
              ],
            ),
          )),
    );
  }
}
