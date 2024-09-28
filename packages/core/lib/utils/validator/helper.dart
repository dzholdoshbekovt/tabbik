import 'package:core/controllers/validator_controller.dart';

class ValidatorHelper {
  static bool validate(List<ValidatorController> list) {
    bool value = true;
    for (var element in list) {
      bool local = element.validate?.call() ?? true == true;
      value = value == true ? local : false;
    }
    return value;
  }
}
