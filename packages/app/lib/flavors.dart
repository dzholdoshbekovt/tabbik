// ignore_for_file: constant_identifier_names

enum Flavor {
  prod,
  staging,
  staging_test,
  dev,
  dev_test,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'RSK';
      case Flavor.staging:
        return 'RSK Staging';
      case Flavor.staging_test:
        return 'RSK Staging Test';
      case Flavor.dev:
        return 'RSK Dev';
      case Flavor.dev_test:
        return 'RSK Dev Test';
      default:
        return 'title';
    }
  }
}
