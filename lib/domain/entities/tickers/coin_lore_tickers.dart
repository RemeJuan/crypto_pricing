import 'package:crypto_pricing/domain/entities/tickers/coin_lore_tickers_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'coin_lore_tickers_data.dart';

part 'coin_lore_tickers.freezed.dart';

part 'coin_lore_tickers.g.dart';

@freezed
class CoinLoreTickersEntity with _$CoinLoreTickersEntity {
  const factory CoinLoreTickersEntity({
    required List<CoinLoreTickersDataEntity> data,
    required CoinLoreTickersInfoEntity info,
  }) = _CoinLoreTickersEntity;

  factory CoinLoreTickersEntity.fromJson(Map<String, dynamic> json) =>
      _$CoinLoreTickersEntityFromJson(json);
}
