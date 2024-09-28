// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModuleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function(TokenConvertPayload payload) convertToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function(TokenConvertPayload payload)? convertToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function(TokenConvertPayload payload)? convertToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_ConvertToken value) convertToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_ConvertToken value)? convertToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_ConvertToken value)? convertToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleEventCopyWith<$Res> {
  factory $ModuleEventCopyWith(
          ModuleEvent value, $Res Function(ModuleEvent) then) =
      _$ModuleEventCopyWithImpl<$Res, ModuleEvent>;
}

/// @nodoc
class _$ModuleEventCopyWithImpl<$Res, $Val extends ModuleEvent>
    implements $ModuleEventCopyWith<$Res> {
  _$ModuleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$ModuleEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl();

  @override
  String toString() {
    return 'ModuleEvent.signIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function(TokenConvertPayload payload) convertToken,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function(TokenConvertPayload payload)? convertToken,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function(TokenConvertPayload payload)? convertToken,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_ConvertToken value) convertToken,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_ConvertToken value)? convertToken,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_ConvertToken value)? convertToken,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements ModuleEvent {
  const factory _SignIn() = _$SignInImpl;
}

/// @nodoc
abstract class _$$ConvertTokenImplCopyWith<$Res> {
  factory _$$ConvertTokenImplCopyWith(
          _$ConvertTokenImpl value, $Res Function(_$ConvertTokenImpl) then) =
      __$$ConvertTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenConvertPayload payload});
}

/// @nodoc
class __$$ConvertTokenImplCopyWithImpl<$Res>
    extends _$ModuleEventCopyWithImpl<$Res, _$ConvertTokenImpl>
    implements _$$ConvertTokenImplCopyWith<$Res> {
  __$$ConvertTokenImplCopyWithImpl(
      _$ConvertTokenImpl _value, $Res Function(_$ConvertTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$ConvertTokenImpl(
      null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as TokenConvertPayload,
    ));
  }
}

/// @nodoc

class _$ConvertTokenImpl implements _ConvertToken {
  const _$ConvertTokenImpl(this.payload);

  @override
  final TokenConvertPayload payload;

  @override
  String toString() {
    return 'ModuleEvent.convertToken(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertTokenImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertTokenImplCopyWith<_$ConvertTokenImpl> get copyWith =>
      __$$ConvertTokenImplCopyWithImpl<_$ConvertTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function(TokenConvertPayload payload) convertToken,
  }) {
    return convertToken(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function(TokenConvertPayload payload)? convertToken,
  }) {
    return convertToken?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function(TokenConvertPayload payload)? convertToken,
    required TResult orElse(),
  }) {
    if (convertToken != null) {
      return convertToken(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_ConvertToken value) convertToken,
  }) {
    return convertToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_ConvertToken value)? convertToken,
  }) {
    return convertToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_ConvertToken value)? convertToken,
    required TResult orElse(),
  }) {
    if (convertToken != null) {
      return convertToken(this);
    }
    return orElse();
  }
}

abstract class _ConvertToken implements ModuleEvent {
  const factory _ConvertToken(final TokenConvertPayload payload) =
      _$ConvertTokenImpl;

  TokenConvertPayload get payload;
  @JsonKey(ignore: true)
  _$$ConvertTokenImplCopyWith<_$ConvertTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ModuleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGoogleSignIn,
    required TResult Function(String? data) successGoogleSignIn,
    required TResult Function(dynamic err) errorGoogleSignIn,
    required TResult Function() loadingConvertToken,
    required TResult Function(TokenModel data) successConvertToken,
    required TResult Function(dynamic err) errorConvertToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGoogleSignIn,
    TResult? Function(String? data)? successGoogleSignIn,
    TResult? Function(dynamic err)? errorGoogleSignIn,
    TResult? Function()? loadingConvertToken,
    TResult? Function(TokenModel data)? successConvertToken,
    TResult? Function(dynamic err)? errorConvertToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGoogleSignIn,
    TResult Function(String? data)? successGoogleSignIn,
    TResult Function(dynamic err)? errorGoogleSignIn,
    TResult Function()? loadingConvertToken,
    TResult Function(TokenModel data)? successConvertToken,
    TResult Function(dynamic err)? errorConvertToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingGoogleSignIn value) loadingGoogleSignIn,
    required TResult Function(_SuccessGoogleSignIn value) successGoogleSignIn,
    required TResult Function(_ErrorGoogleSignIn value) errorGoogleSignIn,
    required TResult Function(_LoadingConvertToken value) loadingConvertToken,
    required TResult Function(_SuccessConvertToken value) successConvertToken,
    required TResult Function(_ErrorConvertToken value) errorConvertToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult? Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult? Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult? Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult? Function(_SuccessConvertToken value)? successConvertToken,
    TResult? Function(_ErrorConvertToken value)? errorConvertToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult Function(_SuccessConvertToken value)? successConvertToken,
    TResult Function(_ErrorConvertToken value)? errorConvertToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleStateCopyWith<$Res> {
  factory $ModuleStateCopyWith(
          ModuleState value, $Res Function(ModuleState) then) =
      _$ModuleStateCopyWithImpl<$Res, ModuleState>;
}

/// @nodoc
class _$ModuleStateCopyWithImpl<$Res, $Val extends ModuleState>
    implements $ModuleStateCopyWith<$Res> {
  _$ModuleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ModuleState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGoogleSignIn,
    required TResult Function(String? data) successGoogleSignIn,
    required TResult Function(dynamic err) errorGoogleSignIn,
    required TResult Function() loadingConvertToken,
    required TResult Function(TokenModel data) successConvertToken,
    required TResult Function(dynamic err) errorConvertToken,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGoogleSignIn,
    TResult? Function(String? data)? successGoogleSignIn,
    TResult? Function(dynamic err)? errorGoogleSignIn,
    TResult? Function()? loadingConvertToken,
    TResult? Function(TokenModel data)? successConvertToken,
    TResult? Function(dynamic err)? errorConvertToken,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGoogleSignIn,
    TResult Function(String? data)? successGoogleSignIn,
    TResult Function(dynamic err)? errorGoogleSignIn,
    TResult Function()? loadingConvertToken,
    TResult Function(TokenModel data)? successConvertToken,
    TResult Function(dynamic err)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingGoogleSignIn value) loadingGoogleSignIn,
    required TResult Function(_SuccessGoogleSignIn value) successGoogleSignIn,
    required TResult Function(_ErrorGoogleSignIn value) errorGoogleSignIn,
    required TResult Function(_LoadingConvertToken value) loadingConvertToken,
    required TResult Function(_SuccessConvertToken value) successConvertToken,
    required TResult Function(_ErrorConvertToken value) errorConvertToken,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult? Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult? Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult? Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult? Function(_SuccessConvertToken value)? successConvertToken,
    TResult? Function(_ErrorConvertToken value)? errorConvertToken,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult Function(_SuccessConvertToken value)? successConvertToken,
    TResult Function(_ErrorConvertToken value)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ModuleState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingGoogleSignInImplCopyWith<$Res> {
  factory _$$LoadingGoogleSignInImplCopyWith(_$LoadingGoogleSignInImpl value,
          $Res Function(_$LoadingGoogleSignInImpl) then) =
      __$$LoadingGoogleSignInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingGoogleSignInImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$LoadingGoogleSignInImpl>
    implements _$$LoadingGoogleSignInImplCopyWith<$Res> {
  __$$LoadingGoogleSignInImplCopyWithImpl(_$LoadingGoogleSignInImpl _value,
      $Res Function(_$LoadingGoogleSignInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingGoogleSignInImpl implements _LoadingGoogleSignIn {
  const _$LoadingGoogleSignInImpl();

  @override
  String toString() {
    return 'ModuleState.loadingGoogleSignIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingGoogleSignInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGoogleSignIn,
    required TResult Function(String? data) successGoogleSignIn,
    required TResult Function(dynamic err) errorGoogleSignIn,
    required TResult Function() loadingConvertToken,
    required TResult Function(TokenModel data) successConvertToken,
    required TResult Function(dynamic err) errorConvertToken,
  }) {
    return loadingGoogleSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGoogleSignIn,
    TResult? Function(String? data)? successGoogleSignIn,
    TResult? Function(dynamic err)? errorGoogleSignIn,
    TResult? Function()? loadingConvertToken,
    TResult? Function(TokenModel data)? successConvertToken,
    TResult? Function(dynamic err)? errorConvertToken,
  }) {
    return loadingGoogleSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGoogleSignIn,
    TResult Function(String? data)? successGoogleSignIn,
    TResult Function(dynamic err)? errorGoogleSignIn,
    TResult Function()? loadingConvertToken,
    TResult Function(TokenModel data)? successConvertToken,
    TResult Function(dynamic err)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (loadingGoogleSignIn != null) {
      return loadingGoogleSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingGoogleSignIn value) loadingGoogleSignIn,
    required TResult Function(_SuccessGoogleSignIn value) successGoogleSignIn,
    required TResult Function(_ErrorGoogleSignIn value) errorGoogleSignIn,
    required TResult Function(_LoadingConvertToken value) loadingConvertToken,
    required TResult Function(_SuccessConvertToken value) successConvertToken,
    required TResult Function(_ErrorConvertToken value) errorConvertToken,
  }) {
    return loadingGoogleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult? Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult? Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult? Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult? Function(_SuccessConvertToken value)? successConvertToken,
    TResult? Function(_ErrorConvertToken value)? errorConvertToken,
  }) {
    return loadingGoogleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult Function(_SuccessConvertToken value)? successConvertToken,
    TResult Function(_ErrorConvertToken value)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (loadingGoogleSignIn != null) {
      return loadingGoogleSignIn(this);
    }
    return orElse();
  }
}

abstract class _LoadingGoogleSignIn implements ModuleState {
  const factory _LoadingGoogleSignIn() = _$LoadingGoogleSignInImpl;
}

/// @nodoc
abstract class _$$SuccessGoogleSignInImplCopyWith<$Res> {
  factory _$$SuccessGoogleSignInImplCopyWith(_$SuccessGoogleSignInImpl value,
          $Res Function(_$SuccessGoogleSignInImpl) then) =
      __$$SuccessGoogleSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? data});
}

/// @nodoc
class __$$SuccessGoogleSignInImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$SuccessGoogleSignInImpl>
    implements _$$SuccessGoogleSignInImplCopyWith<$Res> {
  __$$SuccessGoogleSignInImplCopyWithImpl(_$SuccessGoogleSignInImpl _value,
      $Res Function(_$SuccessGoogleSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessGoogleSignInImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SuccessGoogleSignInImpl implements _SuccessGoogleSignIn {
  const _$SuccessGoogleSignInImpl(this.data);

  @override
  final String? data;

  @override
  String toString() {
    return 'ModuleState.successGoogleSignIn(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessGoogleSignInImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessGoogleSignInImplCopyWith<_$SuccessGoogleSignInImpl> get copyWith =>
      __$$SuccessGoogleSignInImplCopyWithImpl<_$SuccessGoogleSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGoogleSignIn,
    required TResult Function(String? data) successGoogleSignIn,
    required TResult Function(dynamic err) errorGoogleSignIn,
    required TResult Function() loadingConvertToken,
    required TResult Function(TokenModel data) successConvertToken,
    required TResult Function(dynamic err) errorConvertToken,
  }) {
    return successGoogleSignIn(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGoogleSignIn,
    TResult? Function(String? data)? successGoogleSignIn,
    TResult? Function(dynamic err)? errorGoogleSignIn,
    TResult? Function()? loadingConvertToken,
    TResult? Function(TokenModel data)? successConvertToken,
    TResult? Function(dynamic err)? errorConvertToken,
  }) {
    return successGoogleSignIn?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGoogleSignIn,
    TResult Function(String? data)? successGoogleSignIn,
    TResult Function(dynamic err)? errorGoogleSignIn,
    TResult Function()? loadingConvertToken,
    TResult Function(TokenModel data)? successConvertToken,
    TResult Function(dynamic err)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (successGoogleSignIn != null) {
      return successGoogleSignIn(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingGoogleSignIn value) loadingGoogleSignIn,
    required TResult Function(_SuccessGoogleSignIn value) successGoogleSignIn,
    required TResult Function(_ErrorGoogleSignIn value) errorGoogleSignIn,
    required TResult Function(_LoadingConvertToken value) loadingConvertToken,
    required TResult Function(_SuccessConvertToken value) successConvertToken,
    required TResult Function(_ErrorConvertToken value) errorConvertToken,
  }) {
    return successGoogleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult? Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult? Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult? Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult? Function(_SuccessConvertToken value)? successConvertToken,
    TResult? Function(_ErrorConvertToken value)? errorConvertToken,
  }) {
    return successGoogleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult Function(_SuccessConvertToken value)? successConvertToken,
    TResult Function(_ErrorConvertToken value)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (successGoogleSignIn != null) {
      return successGoogleSignIn(this);
    }
    return orElse();
  }
}

abstract class _SuccessGoogleSignIn implements ModuleState {
  const factory _SuccessGoogleSignIn(final String? data) =
      _$SuccessGoogleSignInImpl;

  String? get data;
  @JsonKey(ignore: true)
  _$$SuccessGoogleSignInImplCopyWith<_$SuccessGoogleSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorGoogleSignInImplCopyWith<$Res> {
  factory _$$ErrorGoogleSignInImplCopyWith(_$ErrorGoogleSignInImpl value,
          $Res Function(_$ErrorGoogleSignInImpl) then) =
      __$$ErrorGoogleSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic err});
}

/// @nodoc
class __$$ErrorGoogleSignInImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$ErrorGoogleSignInImpl>
    implements _$$ErrorGoogleSignInImplCopyWith<$Res> {
  __$$ErrorGoogleSignInImplCopyWithImpl(_$ErrorGoogleSignInImpl _value,
      $Res Function(_$ErrorGoogleSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_$ErrorGoogleSignInImpl(
      freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ErrorGoogleSignInImpl implements _ErrorGoogleSignIn {
  const _$ErrorGoogleSignInImpl(this.err);

  @override
  final dynamic err;

  @override
  String toString() {
    return 'ModuleState.errorGoogleSignIn(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorGoogleSignInImpl &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorGoogleSignInImplCopyWith<_$ErrorGoogleSignInImpl> get copyWith =>
      __$$ErrorGoogleSignInImplCopyWithImpl<_$ErrorGoogleSignInImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGoogleSignIn,
    required TResult Function(String? data) successGoogleSignIn,
    required TResult Function(dynamic err) errorGoogleSignIn,
    required TResult Function() loadingConvertToken,
    required TResult Function(TokenModel data) successConvertToken,
    required TResult Function(dynamic err) errorConvertToken,
  }) {
    return errorGoogleSignIn(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGoogleSignIn,
    TResult? Function(String? data)? successGoogleSignIn,
    TResult? Function(dynamic err)? errorGoogleSignIn,
    TResult? Function()? loadingConvertToken,
    TResult? Function(TokenModel data)? successConvertToken,
    TResult? Function(dynamic err)? errorConvertToken,
  }) {
    return errorGoogleSignIn?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGoogleSignIn,
    TResult Function(String? data)? successGoogleSignIn,
    TResult Function(dynamic err)? errorGoogleSignIn,
    TResult Function()? loadingConvertToken,
    TResult Function(TokenModel data)? successConvertToken,
    TResult Function(dynamic err)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (errorGoogleSignIn != null) {
      return errorGoogleSignIn(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingGoogleSignIn value) loadingGoogleSignIn,
    required TResult Function(_SuccessGoogleSignIn value) successGoogleSignIn,
    required TResult Function(_ErrorGoogleSignIn value) errorGoogleSignIn,
    required TResult Function(_LoadingConvertToken value) loadingConvertToken,
    required TResult Function(_SuccessConvertToken value) successConvertToken,
    required TResult Function(_ErrorConvertToken value) errorConvertToken,
  }) {
    return errorGoogleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult? Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult? Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult? Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult? Function(_SuccessConvertToken value)? successConvertToken,
    TResult? Function(_ErrorConvertToken value)? errorConvertToken,
  }) {
    return errorGoogleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult Function(_SuccessConvertToken value)? successConvertToken,
    TResult Function(_ErrorConvertToken value)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (errorGoogleSignIn != null) {
      return errorGoogleSignIn(this);
    }
    return orElse();
  }
}

abstract class _ErrorGoogleSignIn implements ModuleState {
  const factory _ErrorGoogleSignIn(final dynamic err) = _$ErrorGoogleSignInImpl;

  dynamic get err;
  @JsonKey(ignore: true)
  _$$ErrorGoogleSignInImplCopyWith<_$ErrorGoogleSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingConvertTokenImplCopyWith<$Res> {
  factory _$$LoadingConvertTokenImplCopyWith(_$LoadingConvertTokenImpl value,
          $Res Function(_$LoadingConvertTokenImpl) then) =
      __$$LoadingConvertTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingConvertTokenImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$LoadingConvertTokenImpl>
    implements _$$LoadingConvertTokenImplCopyWith<$Res> {
  __$$LoadingConvertTokenImplCopyWithImpl(_$LoadingConvertTokenImpl _value,
      $Res Function(_$LoadingConvertTokenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingConvertTokenImpl implements _LoadingConvertToken {
  const _$LoadingConvertTokenImpl();

  @override
  String toString() {
    return 'ModuleState.loadingConvertToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingConvertTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGoogleSignIn,
    required TResult Function(String? data) successGoogleSignIn,
    required TResult Function(dynamic err) errorGoogleSignIn,
    required TResult Function() loadingConvertToken,
    required TResult Function(TokenModel data) successConvertToken,
    required TResult Function(dynamic err) errorConvertToken,
  }) {
    return loadingConvertToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGoogleSignIn,
    TResult? Function(String? data)? successGoogleSignIn,
    TResult? Function(dynamic err)? errorGoogleSignIn,
    TResult? Function()? loadingConvertToken,
    TResult? Function(TokenModel data)? successConvertToken,
    TResult? Function(dynamic err)? errorConvertToken,
  }) {
    return loadingConvertToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGoogleSignIn,
    TResult Function(String? data)? successGoogleSignIn,
    TResult Function(dynamic err)? errorGoogleSignIn,
    TResult Function()? loadingConvertToken,
    TResult Function(TokenModel data)? successConvertToken,
    TResult Function(dynamic err)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (loadingConvertToken != null) {
      return loadingConvertToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingGoogleSignIn value) loadingGoogleSignIn,
    required TResult Function(_SuccessGoogleSignIn value) successGoogleSignIn,
    required TResult Function(_ErrorGoogleSignIn value) errorGoogleSignIn,
    required TResult Function(_LoadingConvertToken value) loadingConvertToken,
    required TResult Function(_SuccessConvertToken value) successConvertToken,
    required TResult Function(_ErrorConvertToken value) errorConvertToken,
  }) {
    return loadingConvertToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult? Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult? Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult? Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult? Function(_SuccessConvertToken value)? successConvertToken,
    TResult? Function(_ErrorConvertToken value)? errorConvertToken,
  }) {
    return loadingConvertToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult Function(_SuccessConvertToken value)? successConvertToken,
    TResult Function(_ErrorConvertToken value)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (loadingConvertToken != null) {
      return loadingConvertToken(this);
    }
    return orElse();
  }
}

abstract class _LoadingConvertToken implements ModuleState {
  const factory _LoadingConvertToken() = _$LoadingConvertTokenImpl;
}

/// @nodoc
abstract class _$$SuccessConvertTokenImplCopyWith<$Res> {
  factory _$$SuccessConvertTokenImplCopyWith(_$SuccessConvertTokenImpl value,
          $Res Function(_$SuccessConvertTokenImpl) then) =
      __$$SuccessConvertTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenModel data});
}

/// @nodoc
class __$$SuccessConvertTokenImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$SuccessConvertTokenImpl>
    implements _$$SuccessConvertTokenImplCopyWith<$Res> {
  __$$SuccessConvertTokenImplCopyWithImpl(_$SuccessConvertTokenImpl _value,
      $Res Function(_$SuccessConvertTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessConvertTokenImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenModel,
    ));
  }
}

/// @nodoc

class _$SuccessConvertTokenImpl implements _SuccessConvertToken {
  const _$SuccessConvertTokenImpl(this.data);

  @override
  final TokenModel data;

  @override
  String toString() {
    return 'ModuleState.successConvertToken(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessConvertTokenImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessConvertTokenImplCopyWith<_$SuccessConvertTokenImpl> get copyWith =>
      __$$SuccessConvertTokenImplCopyWithImpl<_$SuccessConvertTokenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGoogleSignIn,
    required TResult Function(String? data) successGoogleSignIn,
    required TResult Function(dynamic err) errorGoogleSignIn,
    required TResult Function() loadingConvertToken,
    required TResult Function(TokenModel data) successConvertToken,
    required TResult Function(dynamic err) errorConvertToken,
  }) {
    return successConvertToken(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGoogleSignIn,
    TResult? Function(String? data)? successGoogleSignIn,
    TResult? Function(dynamic err)? errorGoogleSignIn,
    TResult? Function()? loadingConvertToken,
    TResult? Function(TokenModel data)? successConvertToken,
    TResult? Function(dynamic err)? errorConvertToken,
  }) {
    return successConvertToken?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGoogleSignIn,
    TResult Function(String? data)? successGoogleSignIn,
    TResult Function(dynamic err)? errorGoogleSignIn,
    TResult Function()? loadingConvertToken,
    TResult Function(TokenModel data)? successConvertToken,
    TResult Function(dynamic err)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (successConvertToken != null) {
      return successConvertToken(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingGoogleSignIn value) loadingGoogleSignIn,
    required TResult Function(_SuccessGoogleSignIn value) successGoogleSignIn,
    required TResult Function(_ErrorGoogleSignIn value) errorGoogleSignIn,
    required TResult Function(_LoadingConvertToken value) loadingConvertToken,
    required TResult Function(_SuccessConvertToken value) successConvertToken,
    required TResult Function(_ErrorConvertToken value) errorConvertToken,
  }) {
    return successConvertToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult? Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult? Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult? Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult? Function(_SuccessConvertToken value)? successConvertToken,
    TResult? Function(_ErrorConvertToken value)? errorConvertToken,
  }) {
    return successConvertToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult Function(_SuccessConvertToken value)? successConvertToken,
    TResult Function(_ErrorConvertToken value)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (successConvertToken != null) {
      return successConvertToken(this);
    }
    return orElse();
  }
}

abstract class _SuccessConvertToken implements ModuleState {
  const factory _SuccessConvertToken(final TokenModel data) =
      _$SuccessConvertTokenImpl;

  TokenModel get data;
  @JsonKey(ignore: true)
  _$$SuccessConvertTokenImplCopyWith<_$SuccessConvertTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorConvertTokenImplCopyWith<$Res> {
  factory _$$ErrorConvertTokenImplCopyWith(_$ErrorConvertTokenImpl value,
          $Res Function(_$ErrorConvertTokenImpl) then) =
      __$$ErrorConvertTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic err});
}

/// @nodoc
class __$$ErrorConvertTokenImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$ErrorConvertTokenImpl>
    implements _$$ErrorConvertTokenImplCopyWith<$Res> {
  __$$ErrorConvertTokenImplCopyWithImpl(_$ErrorConvertTokenImpl _value,
      $Res Function(_$ErrorConvertTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_$ErrorConvertTokenImpl(
      freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ErrorConvertTokenImpl implements _ErrorConvertToken {
  const _$ErrorConvertTokenImpl(this.err);

  @override
  final dynamic err;

  @override
  String toString() {
    return 'ModuleState.errorConvertToken(err: $err)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorConvertTokenImpl &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorConvertTokenImplCopyWith<_$ErrorConvertTokenImpl> get copyWith =>
      __$$ErrorConvertTokenImplCopyWithImpl<_$ErrorConvertTokenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingGoogleSignIn,
    required TResult Function(String? data) successGoogleSignIn,
    required TResult Function(dynamic err) errorGoogleSignIn,
    required TResult Function() loadingConvertToken,
    required TResult Function(TokenModel data) successConvertToken,
    required TResult Function(dynamic err) errorConvertToken,
  }) {
    return errorConvertToken(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingGoogleSignIn,
    TResult? Function(String? data)? successGoogleSignIn,
    TResult? Function(dynamic err)? errorGoogleSignIn,
    TResult? Function()? loadingConvertToken,
    TResult? Function(TokenModel data)? successConvertToken,
    TResult? Function(dynamic err)? errorConvertToken,
  }) {
    return errorConvertToken?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingGoogleSignIn,
    TResult Function(String? data)? successGoogleSignIn,
    TResult Function(dynamic err)? errorGoogleSignIn,
    TResult Function()? loadingConvertToken,
    TResult Function(TokenModel data)? successConvertToken,
    TResult Function(dynamic err)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (errorConvertToken != null) {
      return errorConvertToken(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingGoogleSignIn value) loadingGoogleSignIn,
    required TResult Function(_SuccessGoogleSignIn value) successGoogleSignIn,
    required TResult Function(_ErrorGoogleSignIn value) errorGoogleSignIn,
    required TResult Function(_LoadingConvertToken value) loadingConvertToken,
    required TResult Function(_SuccessConvertToken value) successConvertToken,
    required TResult Function(_ErrorConvertToken value) errorConvertToken,
  }) {
    return errorConvertToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult? Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult? Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult? Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult? Function(_SuccessConvertToken value)? successConvertToken,
    TResult? Function(_ErrorConvertToken value)? errorConvertToken,
  }) {
    return errorConvertToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingGoogleSignIn value)? loadingGoogleSignIn,
    TResult Function(_SuccessGoogleSignIn value)? successGoogleSignIn,
    TResult Function(_ErrorGoogleSignIn value)? errorGoogleSignIn,
    TResult Function(_LoadingConvertToken value)? loadingConvertToken,
    TResult Function(_SuccessConvertToken value)? successConvertToken,
    TResult Function(_ErrorConvertToken value)? errorConvertToken,
    required TResult orElse(),
  }) {
    if (errorConvertToken != null) {
      return errorConvertToken(this);
    }
    return orElse();
  }
}

abstract class _ErrorConvertToken implements ModuleState {
  const factory _ErrorConvertToken(final dynamic err) = _$ErrorConvertTokenImpl;

  dynamic get err;
  @JsonKey(ignore: true)
  _$$ErrorConvertTokenImplCopyWith<_$ErrorConvertTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
