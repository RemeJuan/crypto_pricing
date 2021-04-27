// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickers_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TickersDataEntity _$_$_TickersDataEntityFromJson(Map<String, dynamic> json) {
  return _$_TickersDataEntity(
    id: json['id'] as String,
    symbol: json['symbol'] as String,
    name: json['name'] as String,
    nameid: json['nameid'] as String,
    rank: json['rank'] as int,
    priceUsd: json['price_usd'] as String,
    percentChange24h: json['percent_change_24h'] as String,
    percentChange1h: json['percent_change_1h'] as String,
    percentChange7d: json['percent_change_7d'] as String,
    priceBtc: json['price_btc'] as String,
    marketCapUsd: json['market_cap_usd'] as String,
    volume24: (json['volume24'] as num).toDouble(),
    volume24a: (json['volume24a'] as num).toDouble(),
    csupply: json['csupply'] as String,
    tsupply: json['tsupply'] as String,
    msupply: json['msupply'] as String,
  );
}

Map<String, dynamic> _$_$_TickersDataEntityToJson(
        _$_TickersDataEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'nameid': instance.nameid,
      'rank': instance.rank,
      'price_usd': instance.priceUsd,
      'percent_change_24h': instance.percentChange24h,
      'percent_change_1h': instance.percentChange1h,
      'percent_change_7d': instance.percentChange7d,
      'price_btc': instance.priceBtc,
      'market_cap_usd': instance.marketCapUsd,
      'volume24': instance.volume24,
      'volume24a': instance.volume24a,
      'csupply': instance.csupply,
      'tsupply': instance.tsupply,
      'msupply': instance.msupply,
    };
