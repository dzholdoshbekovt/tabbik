import 'package:core/constants/storage.dart';
import 'package:core/models/token_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const storage = FlutterSecureStorage(
    iOptions: IOSOptions(
        accessibility: KeychainAccessibility.first_unlock_this_device),
    aOptions: AndroidOptions(encryptedSharedPreferences: true));

const seperator = '|';

class SecureStorage {
  static Future<TokenModel?> loadTokens() async {
    String? tokens = await storage.read(key: kSecureTokenKey);
    if (tokens != null) {
      return _desplit(tokens);
    }
    return null;
  }

  static Future<void> storeKeys(
      {String? accessToken, String? refreshToken}) async {
    await storage.write(
        key: kSecureTokenKey,
        value: _ensplit(TokenModel(accessToken: accessToken)));
  }

  static Future<void> clearAllData() async {
    await storage.deleteAll();
  }

  static TokenModel _desplit(String value) {
    List<String> values = value.split(seperator);
    return TokenModel(accessToken: values[0]);
  }

  static String _ensplit(TokenModel value) {
    return '${value.accessToken}';
  }

  static Future<void> setPin(String pin) async {
    await storage.write(key: kPinKey, value: pin);
  }

  static Future<String?> getPin() async {
    return await storage.read(key: kPinKey);
  }
}
