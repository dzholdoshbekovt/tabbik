import 'package:core/constants/urls.dart';
import 'package:injectable/injectable.dart';

const kBaseUrl = 'baseUrl';

//Module
@module
abstract class AppModule {
  @dev
  @singleton
  @Named(kBaseUrl)
  String get baseUrlDev => Urls.baseUrlDev;

  @prod
  @singleton
  @Named(kBaseUrl)
  String get baseUrlProd => Urls.baseUrlProd;

  @test
  @singleton
  @Named(kBaseUrl)
  String get baseUrlTest => Urls.baseUrlTest;
}

@lazySingleton
class Config {
  final String _baseUrl;

  Config(@Named(kBaseUrl) this._baseUrl);

  bool get isTest => _baseUrl == Urls.baseUrlProd ? false : true;
  String get baseUrl => _baseUrl;
  String get baseUrlWithoutSlash => _baseUrl.substring(0, _baseUrl.length - 1);

  String get servicesUrl => isTest ? Urls.servicesTest : Urls.servicesProd;
}
