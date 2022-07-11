// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coins _$$_CoinsFromJson(Map<String, dynamic> json) => _$_Coins(
      id: json['id'] as String?,
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      current_price: (json['current_price'] as num?)?.toDouble(),
      market_cap: json['market_cap'] as int?,
      market_cap_rank: json['market_cap_rank'] as int?,
      fully_diluted_valuation: json['fully_diluted_valuation'] as int?,
      total_volume: (json['total_volume'] as num?)?.toDouble(),
      high_24_h: (json['high_24_h'] as num?)?.toDouble(),
      low_24_h: (json['low_24_h'] as num?)?.toDouble(),
      price_change_24h: (json['price_change_24h'] as num?)?.toDouble(),
      price_change_percentage_24h:
          (json['price_change_percentage_24h'] as num?)?.toDouble(),
      market_cap_change_24h:
          (json['market_cap_change_24h'] as num?)?.toDouble(),
      market_cap_change_percentage_24h:
          (json['market_cap_change_percentage_24h'] as num?)?.toDouble(),
      circulating_supply: (json['circulating_supply'] as num?)?.toDouble(),
      total_supply: (json['total_supply'] as num?)?.toDouble(),
      max_supply: (json['max_supply'] as num?)?.toDouble(),
      ath: (json['ath'] as num?)?.toDouble(),
      ath_change_percentage:
          (json['ath_change_percentage'] as num?)?.toDouble(),
      ath_date: json['ath_date'] == null
          ? null
          : DateTime.parse(json['ath_date'] as String),
      atl: (json['atl'] as num?)?.toDouble(),
      atl_change_percentage:
          (json['atl_change_percentage'] as num?)?.toDouble(),
      atl_date: json['atl_date'] == null
          ? null
          : DateTime.parse(json['atl_date'] as String),
      last_updated: json['last_updated'] == null
          ? null
          : DateTime.parse(json['last_updated'] as String),
      price_change_percentage_1y_in_currency:
          (json['price_change_percentage_1y_in_currency'] as num?)?.toDouble(),
      price_change_percentage_200d_in_currency:
          (json['price_change_percentage_200d_in_currency'] as num?)
              ?.toDouble(),
      price_change_percentage_24h_in_currency:
          (json['price_change_percentage_24h_in_currency'] as num?)?.toDouble(),
      price_change_percentage_30d_in_currency:
          (json['price_change_percentage_30d_in_currency'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CoinsToJson(_$_Coins instance) => <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.current_price,
      'market_cap': instance.market_cap,
      'market_cap_rank': instance.market_cap_rank,
      'fully_diluted_valuation': instance.fully_diluted_valuation,
      'total_volume': instance.total_volume,
      'high_24_h': instance.high_24_h,
      'low_24_h': instance.low_24_h,
      'price_change_24h': instance.price_change_24h,
      'price_change_percentage_24h': instance.price_change_percentage_24h,
      'market_cap_change_24h': instance.market_cap_change_24h,
      'market_cap_change_percentage_24h':
          instance.market_cap_change_percentage_24h,
      'circulating_supply': instance.circulating_supply,
      'total_supply': instance.total_supply,
      'max_supply': instance.max_supply,
      'ath': instance.ath,
      'ath_change_percentage': instance.ath_change_percentage,
      'ath_date': instance.ath_date?.toIso8601String(),
      'atl': instance.atl,
      'atl_change_percentage': instance.atl_change_percentage,
      'atl_date': instance.atl_date?.toIso8601String(),
      'last_updated': instance.last_updated?.toIso8601String(),
      'price_change_percentage_1y_in_currency':
          instance.price_change_percentage_1y_in_currency,
      'price_change_percentage_200d_in_currency':
          instance.price_change_percentage_200d_in_currency,
      'price_change_percentage_24h_in_currency':
          instance.price_change_percentage_24h_in_currency,
      'price_change_percentage_30d_in_currency':
          instance.price_change_percentage_30d_in_currency,
    };
