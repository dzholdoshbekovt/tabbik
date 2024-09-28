import 'package:core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:theme/components/main.dart';
import 'package:theme/constants/theme.dart';
import 'package:theme/fonts/app_fonts.dart';

enum SnackBarStatuses { success, warning, error }

class AppSnackBar {
  static final List<_SnackBarModel> _history = [];

  static showSnackBar(BuildContext context, String text,
      {SnackBarStatuses status = SnackBarStatuses.error}) async {
    CustomMainThemeData? theme;
    try {
      theme = Theme.of(context).extension<CustomMainThemeData>();
    } catch (_) {
      return;
    }

    Color? backgroundColor;
    Color? assetColor;
    String asset = CoreAssets.snackbarInfoIcon;
    if (status == SnackBarStatuses.success) {
      backgroundColor = theme?.success;
      assetColor = theme?.white;
      asset = CoreAssets.snackbarSuccessIcon;
    } else if (status == SnackBarStatuses.error) {
      backgroundColor = theme?.alert;
      assetColor = theme?.white;
    } else {
      backgroundColor = theme?.secondary;
      assetColor = theme?.extra;
    }

    var list = _history
        .where((element) => element.text == text && element.status == status);
    if (list.isEmpty) {
      ScaffoldFeatureController snackbar =
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: backgroundColor,
        margin: EdgeInsets.only(
            left: AppSpacing.s4x,
            right: AppSpacing.s4x,
            bottom: AppSpacing.s8x + MediaQuery.of(context).viewInsets.bottom),
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppCorners.medium2)),
        content: Row(
          children: [
            Image.asset(asset, color: assetColor),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                text,
                style: AppFonts.font.mSemibold.copyWith(color: theme?.white),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ));

      _history.add(
          _SnackBarModel(hash: snackbar.hashCode, text: text, status: status));

      await snackbar.closed;

      _history.removeWhere((element) => element.hash == snackbar.hashCode);
    }
  }
}

class _SnackBarModel {
  String text;
  SnackBarStatuses status;
  int hash;

  _SnackBarModel(
      {required this.hash, required this.text, required this.status});
}
