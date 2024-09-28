import 'package:json_annotation/json_annotation.dart';

part 'token_convert.g.dart';

@JsonSerializable()
class TokenConvertPayload {
  @JsonKey(name: 'grant_type')
  final String? grantType;
  @JsonKey(name: 'client_id')
  final String? clientId;
  @JsonKey(name: 'client_secret')
  final String? clientSecret;
  final String? backend;
  final String? token;

  TokenConvertPayload({
    this.grantType,
    this.clientId,
    this.clientSecret,
    this.backend,
    this.token,
  });

  factory TokenConvertPayload.fromJson(Map<String, dynamic> json) =>
      _$TokenConvertPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$TokenConvertPayloadToJson(this);
}
