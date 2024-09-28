// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_convert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenConvertPayload _$TokenConvertPayloadFromJson(Map<String, dynamic> json) =>
    TokenConvertPayload(
      grantType: json['grant_type'] as String?,
      clientId: json['client_id'] as String?,
      clientSecret: json['client_secret'] as String?,
      backend: json['backend'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$TokenConvertPayloadToJson(
        TokenConvertPayload instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'backend': instance.backend,
      'token': instance.token,
    };
