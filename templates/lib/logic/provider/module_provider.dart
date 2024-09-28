import 'package:core/network/core_api.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ModuleProvider {
  final CoreApi _coreApi;

  ModuleProvider(this._coreApi);
}
