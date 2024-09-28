import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'module_service.g.dart';

@RestApi()
abstract class ModuleService {
  factory ModuleService(Dio dio, {String baseUrl}) = _ModuleService;
}
