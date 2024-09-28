import 'package:auth/logic/models/token_convert.dart';
import 'package:auth/logic/provider/module_provider.dart';
import 'package:auth/logic/repositories/module_repository.dart';
import 'package:core/models/token_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ModuleRepository)
class ApiModuleRepository extends ModuleRepository {
  final ModuleProvider _provider;

  ApiModuleRepository(this._provider);

  @override
  Future<String?> signIn() => _provider.signIn();

  @override
  Future<TokenModel> convertToken(TokenConvertPayload payload) => _provider.convertToken(payload);
}
