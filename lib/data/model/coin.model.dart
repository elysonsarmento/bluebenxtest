// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'coin.model.freezed.dart';
part 'coin.model.g.dart';

List<Coins> coinsFromJson(String str) => List<Coins>.from(json.decode(str).map((x) => Coins.fromJson(x)));

String coinsToJson(List<Coins> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Coins with _$Coins {
    const factory Coins({
        String? id,
        String? symbol,
        String? name,
        String? image,
        double? current_price,
        int? market_cap,
        int? market_cap_rank,
        int? fully_diluted_valuation,
        double? total_volume,
        double? high_24_h,
        double? low_24_h,
        double? price_change_24h,
        double? price_change_percentage_24h,
        double? market_cap_change_24h,
        double? market_cap_change_percentage_24h,
        double? circulating_supply,
        double? total_supply,
        double? max_supply,
        double? ath,
        double? ath_change_percentage,
        DateTime? ath_date,
        double? atl,
        double? atl_change_percentage,
        DateTime? atl_date,
        DateTime? last_updated,
        double? price_change_percentage_1y_in_currency,
        double? price_change_percentage_200d_in_currency,
        double? price_change_percentage_24h_in_currency,
        double? price_change_percentage_30d_in_currency,
    }) = _Coins;

    factory Coins.fromJson(Map<String, dynamic> json) => _$CoinsFromJson(json);
}
