import 'package:auth/logic/models/token_convert.dart';
import 'package:core/models/token_model.dart';

abstract class ModuleRepository {
  Future<String?> signIn();
  Future<TokenModel> convertToken(TokenConvertPayload payload);
}
