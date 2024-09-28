import 'package:auth/logic/constants/signin.dart';
import 'package:auth/logic/models/token_convert.dart';
import 'package:auth/logic/services/module_service.dart';
import 'package:core/models/token_model.dart';
import 'package:core/network/core_api.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ModuleProvider {
  final CoreApi _coreApi;

  ModuleProvider(this._coreApi);

  Future<String?> signIn() async {
    final GoogleSignIn googleSignIn =
        GoogleSignIn(scopes: ['email', 'profile'], serverClientId: kClientId);
    var signInRes = await googleSignIn.signIn();
    return (await signInRes?.authentication)?.accessToken;
  }

  Future<TokenModel> convertToken(TokenConvertPayload payload) async {
    ModuleService service = ModuleService(_coreApi.auth);
    return await service.convertToken(payload);
  }
}
