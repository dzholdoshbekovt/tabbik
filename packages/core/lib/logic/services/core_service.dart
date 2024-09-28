import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' as rest;

part 'core_service.g.dart';

@rest.RestApi(parser: rest.Parser.FlutterCompute)
abstract class CoreService {
  factory CoreService(Dio dio, {String baseUrl}) = _CoreService;
}
