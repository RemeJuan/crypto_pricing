import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_entity.freezed.dart';

part 'market_entity.g.dart';

@freezed
class MarketEntity with _$MarketEntity {
  const factory MarketEntity({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: 'current_price') required num currentPrice,
    @JsonKey(name: 'market_cap') required int marketCap,
    @JsonKey(name: 'market_cap_rank') required int marketCapRank,
    @JsonKey(name: 'total_volume') required num totalVolume,
    @JsonKey(name: 'high_24h') required num high24h,
    @JsonKey(name: 'low_24h') required num low24h,
    @JsonKey(name: 'price_change_24h') required double priceChange24h,
    @JsonKey(name: 'price_change_percentage_24h')
        required double priceChangePercentage24h,
    @JsonKey(name: 'market_cap_change_24h') required double marketCapChange24h,
    @JsonKey(name: 'market_cap_change_percentage_24h')
        required double marketCapChangePercentage24h,
    @JsonKey(name: 'circulating_supply') required num circulatingSupply,
    required num ath,
    @JsonKey(name: 'ath_change_percentage') required double athChangePercentage,
    @JsonKey(name: 'ath_date') required String athDate,
    required double atl,
    @JsonKey(name: 'atl_change_percentage') required double atlChangePercentage,
    @JsonKey(name: 'atl_date') required String atlDate,
    @JsonKey(name: 'last_updated') required String lastUpdated,
    @JsonKey(name: 'price_change_percentage_1h_in_currency')
        required double priceChangePercentage1hInCurrency,
    @JsonKey(name: 'price_change_percentage_24h_in_currency')
        required double priceChangePercentage24hInCurrency,
    @JsonKey(name: 'price_change_percentage_7d_in_currency')
        required double priceChangePercentage7dInCurrency,
    @JsonKey(name: 'fully_diluted_valuation') num? fullyDilutedValuation,
    @JsonKey(name: 'total_supply') num? totalSupply,
    @JsonKey(name: 'max_supply') num? maxSupply,
  }) = _MarketEntity;

  factory MarketEntity.fromJson(Map<String, dynamic> json) =>
      _$MarketEntityFromJson(json);
}
