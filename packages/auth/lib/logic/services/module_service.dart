import 'package:auth/logic/models/token_convert.dart';
import 'package:core/models/token_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'module_service.g.dart';

@RestApi()
abstract class ModuleService {
  factory ModuleService(Dio dio, {String baseUrl}) = _ModuleService;

  @POST('auth/convert-token/')
  Future<TokenModel> convertToken(@Body() TokenConvertPayload payload);
}
