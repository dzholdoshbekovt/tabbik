abstract class ValidatorController {
  bool Function()? validate;

  dynamic get gValue => null;
}

enum InputStatus {
  standard,
  disabled,
  focused,
  filled,
  alert,
}
