import 'package:auth/logic/localization/module_localization.dart';

extension StringLocalization on String {
  String tr() {
    return ModuleLocalization.instance.tr(this);
  }
}
