enum ExceptionType {
  internet,
  expiredToken,
  expiredPassword,
  auth,
  system,
  timeout,
  server,
  launch,
  other,
}

class AppException implements Exception {
  String? code;
  String? message;
  ExceptionType type;
  dynamic data;

  AppException(
      {this.message, this.type = ExceptionType.other, this.data, this.code});

  bool get isInternetException => type == ExceptionType.internet;
  bool get isTokenExpired => type == ExceptionType.expiredToken;
  bool get isPasswordExpired => type == ExceptionType.expiredPassword;
  bool get isSystemException => type == ExceptionType.system;
  bool get isOther => type == ExceptionType.other;

  @override
  String toString() {
    return 'code: $code, message: $message, type: $type, data: $data';
  }
}
