//@GeneratedMicroModule;AuthPackageModule;package:auth/logic/config/injections.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:auth/logic/bloc/module_bloc.dart' as _i7;
import 'package:auth/logic/provider/module_provider.dart' as _i3;
import 'package:auth/logic/repositories/impl/api_module_repository.dart' as _i6;
import 'package:auth/logic/repositories/module_repository.dart' as _i5;
import 'package:core/network/core_api.dart' as _i4;
import 'package:injectable/injectable.dart' as _i1;

class AuthPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.lazySingleton<_i3.ModuleProvider>(
        () => _i3.ModuleProvider(gh<_i4.CoreApi>()));
    gh.lazySingleton<_i5.ModuleRepository>(
        () => _i6.ApiModuleRepository(gh<_i3.ModuleProvider>()));
    gh.factory<_i7.ModuleBloc>(
        () => _i7.ModuleBloc(gh<_i5.ModuleRepository>()));
  }
}
