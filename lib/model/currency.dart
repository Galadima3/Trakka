// To parse this JSON data, do
//
//     final currency = currencyFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Currency currencyFromJson(String str) => Currency.fromJson(json.decode(str));

String currencyToJson(Currency data) => json.encode(data.toJson());

class Currency {
  Currency({
    required this.time,
    required this.assetIdBase,
    required this.assetIdQuote,
    required this.rate,
  });

  final DateTime time;
  final String assetIdBase;
  final String assetIdQuote;
  final double rate;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    time: DateTime.parse(json["time"]),
    assetIdBase: json["asset_id_base"],
    assetIdQuote: json["asset_id_quote"],
    rate: json["rate"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "time": time.toIso8601String(),
    "asset_id_base": assetIdBase,
    "asset_id_quote": assetIdQuote,
    "rate": rate,
  };
}
