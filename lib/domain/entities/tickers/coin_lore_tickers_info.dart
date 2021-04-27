import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_lore_tickers_info.freezed.dart';

part 'coin_lore_tickers_info.g.dart';

@freezed
class CoinLoreTickersInfoEntity with _$CoinLoreTickersInfoEntity {
  const factory CoinLoreTickersInfoEntity({
    @JsonKey(name: 'coins_num') required int coinsNum,
    required int time,
  }) = _CoinLoreTickersInfoEntity;

  factory CoinLoreTickersInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$CoinLoreTickersInfoEntityFromJson(json);
}
