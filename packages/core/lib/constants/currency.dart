import 'package:core/constants/assets.dart';
import 'package:core/icons/custom_icons.dart';
import 'package:flutter/material.dart';

class ConstantsCurrency {
  static const String kgs = 'KGS';
  static const String usd = 'USD';
  static const String eur = 'EUR';
  static const String rub = 'RUB';
  static const String kzt = 'KZT';
  static const String gbp = 'GBP';
  static const String jpy = 'JPY';
  static const String cny = 'CNY';
}

extension CurrencyToIcon on String? {
  IconData? toIcon() {
    switch (this?.toUpperCase()) {
      case ConstantsCurrency.kgs:
        return CustomIcons.KGS;
      case ConstantsCurrency.usd:
        return CustomIcons.USD;
      case ConstantsCurrency.eur:
        return CustomIcons.EUR;
      case ConstantsCurrency.rub:
        return CustomIcons.RUB;
      case ConstantsCurrency.kzt:
        return CustomIcons.KZT;
      case ConstantsCurrency.gbp:
        return CustomIcons.GBP;
      case ConstantsCurrency.jpy:
        return CustomIcons.JPY_CNY;
      case ConstantsCurrency.cny:
        return CustomIcons.JPY_CNY;
      default:
        return null;
    }
  }

  String? toAssetIcon() {
    switch (this?.toUpperCase()) {
      case ConstantsCurrency.kgs:
        return CoreAssets.kgsIcon;
      case ConstantsCurrency.usd:
        return CoreAssets.usdIcon;
      case ConstantsCurrency.eur:
        return CoreAssets.eurIcon;
      case ConstantsCurrency.rub:
        return CoreAssets.rubIcon;
      case ConstantsCurrency.kzt:
        return CoreAssets.kztIcon;
      case ConstantsCurrency.jpy:
        return CoreAssets.jpyIcon;
      case ConstantsCurrency.cny:
        return CoreAssets.cnyIcon;
      default:
        return null;
    }
  }
}
