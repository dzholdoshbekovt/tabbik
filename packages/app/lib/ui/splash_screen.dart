import 'package:core/constants/routes.dart';
import 'package:core/settings/app_state.dart';
import 'package:core/utils/storage/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:theme/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SecureStorage.getPin().then((value) {
      if (value != null) {
        AppState.of(context)?.setAuthState(AuthState.pin);
        // GoRouter.of(context)
        //     .goNamed(RouteNamesAuth.pinEnter, queryParameters: {'pin': value});
      } else {
        AppState.of(context)?.setAuthState(AuthState.auth);
        // GoRouter.of(context).goNamed(RouteNames.auth);
      }
      GoRouter.of(context).goNamed(RouteNames.redirect);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppTheme.blue.shade40!,
              AppTheme.blue.shade50!,
            ])),
      ),
    );
  }
}
