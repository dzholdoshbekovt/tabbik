import 'package:core/network/core_api.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CoreProvider {
  final CoreApi _coreApi;

  CoreProvider(this._coreApi);
}
