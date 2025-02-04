import 'package:app/config_main.dart';
import 'package:auth/logic/config/auth_resolver.dart';
import 'package:club/logic/config/club_resolver.dart';
import 'package:core/config/core_resolver.dart';
import 'package:core/feature_resolver.dart';
import 'package:core/utils/storage/app_storage.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  String env = Environment.dev;

  WidgetsFlutterBinding.ensureInitialized();
  await AppStorage.instance.initialize();

  final resolvers = <FeatureResolver>[
    CoreResolver(),
    AuthResolver(),
    ClubResolver(),
  ];

  ConfigMain configMain = ConfigMain(resolvers: resolvers, env: env);

  configMain.setupSystemSettings();
  // await configMain.setupFirebase();
  await configMain.setupDependecies();
  await configMain.setupStorage();
  await runner.main(configMain);
}
