import 'package:core/logic/provider/core_provider.dart';
import 'package:core/logic/repositories/core_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CoreRepository)
class ApiCoreRepository extends CoreRepository {
  final CoreProvider _provider;

  ApiCoreRepository(this._provider);
}
