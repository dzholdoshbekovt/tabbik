part of 'module_bloc.dart';

@freezed
class ModuleEvent with _$ModuleEvent {
  const factory ModuleEvent.signIn() = _SignIn;
  const factory ModuleEvent.convertToken(TokenConvertPayload payload) = _ConvertToken;
}
