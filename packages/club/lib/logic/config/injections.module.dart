//@GeneratedMicroModule;ClubPackageModule;package:club/logic/config/injections.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:club/logic/bloc/module_bloc.dart' as _i3;
import 'package:club/logic/provider/module_provider.dart' as _i4;
import 'package:club/logic/repositories/impl/api_module_repository.dart' as _i7;
import 'package:club/logic/repositories/module_repository.dart' as _i6;
import 'package:core/network/core_api.dart' as _i5;
import 'package:injectable/injectable.dart' as _i1;

class ClubPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.ModuleBloc>(() => _i3.ModuleBloc());
    gh.lazySingleton<_i4.ModuleProvider>(
        () => _i4.ModuleProvider(gh<_i5.CoreApi>()));
    gh.lazySingleton<_i6.ModuleRepository>(
        () => _i7.ApiModuleRepository(gh<_i4.ModuleProvider>()));
  }
}
