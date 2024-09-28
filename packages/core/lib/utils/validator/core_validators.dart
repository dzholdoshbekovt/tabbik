import 'package:core/constants/settings.dart';

class CoreValidators {
  static String? required(String? v) {
    if (v?.isEmpty == true || v == null) {
      return 'Обязательное поле';
    }
    return null;
  }

  static String? requiredSelector(v) {
    if (v == null) {
      return 'Обязательное поле';
    }
    return null;
  }

  static String? innValidator(String? v) {
    if (v?.isEmpty == true) {
      return 'Обязательное поле';
    }
    if (v?.startsWith(RegExp('1|2')) == true) {
      if (v?.contains(RegExp(r'^[0-9]*$')) == true) {
        if (v?.length != kPinLength) {
          return 'Поле должно быть равно 14 символам';
        }
        return null;
      }
      return 'Неверный формат';
    }
    return 'Неверный формат';
  }

  static String? otpValidator(String? v) {
    if (v?.isEmpty == true || v == null) {
      return 'Обязательное поле';
    } else if (v.length < 4) {
      return 'Поле должно быть равно 4 символам';
    }
    return null;
  }

  static String? emailValidator(String? v) {
    RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (v?.isEmpty == true) {
      return 'Обязательное поле';
    }
    if (emailRegex.hasMatch(v!) != true) {
      return 'Неверный формат почты';
    }
    return null;
  }

  static String? amountValidator(String? v) {
    RegExp emailRegex = RegExp(r'^0?(?!0+)[0-9]*[\.\,]?[0-9]{1,2}$');
    if (v?.isEmpty == true) {
      return 'Обязательное поле';
    }
    if (emailRegex.hasMatch(v!) != true) {
      return 'Неверный формат';
    }
    return null;
  }

  static String? maskedPhoneValidator(String? v) {
    if (v?.isEmpty == true) {
      return 'Обязательное поле';
    }
    int length = v!.length;
    if (length != kMaskedPhoneLength) {
      return 'Неверный формат';
    }
    return null;
  }

  static String? nullValidate(String? v) {
    if (v?.replaceAll('-', '').replaceAll(',', '.').replaceAll('+', '') ==
        '0') {
      return 'Обязательное поле';
    }
    return null;
  }
}
