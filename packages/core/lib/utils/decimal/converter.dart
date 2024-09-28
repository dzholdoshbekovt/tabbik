import 'package:core/utils/decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';

class DecimalConverter extends JsonConverter<Decimal?, num?> {
  const DecimalConverter();

  @override
  Decimal? fromJson(num? json) => Decimal.tryParse(json.toString());

  @override
  num? toJson(Decimal? object) => object?.toDouble();
}
