// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth/logic/config/injections.module.dart' as _i5;
import 'package:club/logic/config/injections.module.dart' as _i6;
import 'package:core/config/injections.module.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:theme/logic/config/injections.module.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i3.CorePackageModule().init(gh);
    await _i4.ThemePackageModule().init(gh);
    await _i5.AuthPackageModule().init(gh);
    await _i6.ClubPackageModule().init(gh);
    return this;
  }
}
