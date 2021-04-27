import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickers_data_entity.freezed.dart';

part 'tickers_data_entity.g.dart';

@freezed
class TickersDataEntity with _$TickersDataEntity {
  const factory TickersDataEntity({
    required String id,
    required String symbol,
    required String name,
    required String nameid,
    required int rank,
    @JsonKey(name: 'price_usd') required String priceUsd,
    @JsonKey(name: 'percent_change_24h') required String percentChange24h,
    @JsonKey(name: 'percent_change_1h') required String percentChange1h,
    @JsonKey(name: 'percent_change_7d') required String percentChange7d,
    @JsonKey(name: 'price_btc') required String priceBtc,
    @JsonKey(name: 'market_cap_usd') required String marketCapUsd,
    required double volume24,
    required double volume24a,
    required String csupply,
    required String tsupply,
    required String msupply,
  }) = _TickersDataEntity;

  factory TickersDataEntity.fromJson(Map<String, dynamic> json) =>
      _$TickersDataEntityFromJson(json);
}
