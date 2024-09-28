import 'package:injectable/injectable.dart';

import '../../provider/module_provider.dart';
import '../module_repository.dart';

@LazySingleton(as: ModuleRepository)
class ApiModuleRepository extends ModuleRepository {
  final ModuleProvider _provider;

  ApiModuleRepository(this._provider);
}
