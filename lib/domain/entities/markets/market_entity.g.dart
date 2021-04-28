// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarketEntity _$_$_MarketEntityFromJson(Map<String, dynamic> json) {
  return _$_MarketEntity(
    id: json['id'] as String,
    symbol: json['symbol'] as String,
    name: json['name'] as String,
    image: json['image'] as String,
    currentPrice: json['current_price'] as num,
    marketCap: json['market_cap'] as num,
    marketCapRank: json['market_cap_rank'] as num,
    totalVolume: json['total_volume'] as num,
    high24h: json['high_24h'] as num,
    low24h: json['low_24h'] as num,
    priceChange24h: (json['price_change_24h'] as num).toDouble(),
    priceChangePercentage24h:
        (json['price_change_percentage_24h'] as num).toDouble(),
    marketCapChange24h: (json['market_cap_change_24h'] as num).toDouble(),
    marketCapChangePercentage24h:
        (json['market_cap_change_percentage_24h'] as num).toDouble(),
    circulatingSupply: json['circulating_supply'] as num,
    ath: json['ath'] as num,
    athChangePercentage: (json['ath_change_percentage'] as num).toDouble(),
    athDate: json['ath_date'] as String,
    atl: (json['atl'] as num).toDouble(),
    atlChangePercentage: (json['atl_change_percentage'] as num).toDouble(),
    atlDate: json['atl_date'] as String,
    lastUpdated: json['last_updated'] as String,
    priceChangePercentage1hInCurrency:
        (json['price_change_percentage_1h_in_currency'] as num).toDouble(),
    priceChangePercentage24hInCurrency:
        (json['price_change_percentage_24h_in_currency'] as num).toDouble(),
    priceChangePercentage7dInCurrency:
        (json['price_change_percentage_7d_in_currency'] as num).toDouble(),
    fullyDilutedValuation: json['fully_diluted_valuation'] as num?,
    totalSupply: json['total_supply'] as num?,
    maxSupply: json['max_supply'] as num?,
  );
}

Map<String, dynamic> _$_$_MarketEntityToJson(_$_MarketEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'market_cap': instance.marketCap,
      'market_cap_rank': instance.marketCapRank,
      'total_volume': instance.totalVolume,
      'high_24h': instance.high24h,
      'low_24h': instance.low24h,
      'price_change_24h': instance.priceChange24h,
      'price_change_percentage_24h': instance.priceChangePercentage24h,
      'market_cap_change_24h': instance.marketCapChange24h,
      'market_cap_change_percentage_24h': instance.marketCapChangePercentage24h,
      'circulating_supply': instance.circulatingSupply,
      'ath': instance.ath,
      'ath_change_percentage': instance.athChangePercentage,
      'ath_date': instance.athDate,
      'atl': instance.atl,
      'atl_change_percentage': instance.atlChangePercentage,
      'atl_date': instance.atlDate,
      'last_updated': instance.lastUpdated,
      'price_change_percentage_1h_in_currency':
          instance.priceChangePercentage1hInCurrency,
      'price_change_percentage_24h_in_currency':
          instance.priceChangePercentage24hInCurrency,
      'price_change_percentage_7d_in_currency':
          instance.priceChangePercentage7dInCurrency,
      'fully_diluted_valuation': instance.fullyDilutedValuation,
      'total_supply': instance.totalSupply,
      'max_supply': instance.maxSupply,
    };
