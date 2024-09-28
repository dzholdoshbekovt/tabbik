import 'dart:math';

class SettingsConstants {
  static Duration sendTimeout = const Duration(seconds: 60);
  static Duration connectTimeout = const Duration(seconds: 60);
  static Duration receiveTimeout = const Duration(seconds: 60);
}

const kSumRegExp = r'^[+-]?\d*[.,]?\d{0,2}$';
const kExternalExp = r'^\d*[.,]?\d{0,2}$';
RegExp kCardRegExp = RegExp(r'^(9417|5235|5549|4724)');
const kPasswordValidCharacter =
    r'[+|×|÷|=|_|-|€|£|¥|₩|!|@|#|$|%|^|&|*|)|(|-|:|;|,|?|`|~|<|>]';

const kMaskPhone = '(###) ## ## ##';

const kPinLength = 14;
const kMaskedPhoneLength = 14;

class BreakPoints {
  static double lowWidth = 500;
  static double tabletWidth = 768;
}

const kOTPDuration = Duration(minutes: 2);

const kAngleUp = 3 * pi / 2;
const kAngleDown = pi / 2;
const kAngleRight = pi;
const kAngleLeft = 0.0;

class DateFormats {
  static String shortCardFormat = 'MM/yy';
  static String standartFormat = 'dd.MM.yyyy';
}
