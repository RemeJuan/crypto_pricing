import 'package:crypto_pricing/domain/entities/markets/market_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'markets_entity.freezed.dart';

part 'markets_entity.g.dart';

@freezed
class MarketsEntity with _$MarketsEntity {
  const factory MarketsEntity(List<MarketEntity> data) = _MarketsEntity;

  factory MarketsEntity.fromJson(Map<String, dynamic> json) =>
      _$MarketsEntityFromJson(json);
}
