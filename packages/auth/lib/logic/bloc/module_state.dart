part of 'module_bloc.dart';

@freezed
class ModuleState with _$ModuleState {
  const factory ModuleState.initial() = _Initial;

  const factory ModuleState.loadingGoogleSignIn() = _LoadingGoogleSignIn;
  const factory ModuleState.successGoogleSignIn(String? data) =
      _SuccessGoogleSignIn;
  const factory ModuleState.errorGoogleSignIn(dynamic err) = _ErrorGoogleSignIn;

  const factory ModuleState.loadingConvertToken() = _LoadingConvertToken;
  const factory ModuleState.successConvertToken(TokenModel data) =
      _SuccessConvertToken;
  const factory ModuleState.errorConvertToken(dynamic err) = _ErrorConvertToken;
}
