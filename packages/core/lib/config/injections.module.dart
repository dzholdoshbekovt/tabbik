//@GeneratedMicroModule;CorePackageModule;package:core/config/injections.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:core/config/app_config.dart' as _i3;
import 'package:core/logic/provider/core_provider.dart' as _i5;
import 'package:core/logic/repositories/core_repository.dart' as _i6;
import 'package:core/logic/repositories/impl/api_core_repository.dart' as _i7;
import 'package:core/network/core_api.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';

class CorePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final appModule = _$AppModule();
    gh.singleton<String>(
      () => appModule.baseUrlDev,
      instanceName: 'baseUrl',
      registerFor: {_dev},
    );
    gh.singleton<String>(
      () => appModule.baseUrlProd,
      instanceName: 'baseUrl',
      registerFor: {_prod},
    );
    gh.singleton<String>(
      () => appModule.baseUrlTest,
      instanceName: 'baseUrl',
      registerFor: {_test},
    );
    gh.lazySingleton<_i3.Config>(
        () => _i3.Config(gh<String>(instanceName: 'baseUrl')));
    gh.factory<_i4.CoreApi>(() => _i4.CoreApi(gh<_i3.Config>()));
    gh.lazySingleton<_i5.CoreProvider>(
        () => _i5.CoreProvider(gh<_i4.CoreApi>()));
    gh.lazySingleton<_i6.CoreRepository>(
        () => _i7.ApiCoreRepository(gh<_i5.CoreProvider>()));
  }
}

class _$AppModule extends _i3.AppModule {}
