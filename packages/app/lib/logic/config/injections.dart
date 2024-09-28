import 'package:auth/logic/config/injections.module.dart';
import 'package:club/logic/config/injections.module.dart';
import 'package:core/config/injections.module.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:theme/components/button.dart';
import 'package:app/logic/config/injections.config.dart';
import 'package:theme/logic/config/injections.module.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  externalPackageModulesBefore: [
    ExternalModule(CorePackageModule),
  ],
  externalPackageModulesAfter: [
    ExternalModule(ThemePackageModule),
    ExternalModule(AuthPackageModule),
    ExternalModule(ClubPackageModule)
  ],
  includeMicroPackages: true,
)
Future<GetIt> configureAppDependencies(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) async {
  CustomButtonThemeData;
  return await getIt.$initGetIt(
    environmentFilter: environmentFilter,
    environment: env,
  );
}
