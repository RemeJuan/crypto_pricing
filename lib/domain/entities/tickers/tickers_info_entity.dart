import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickers_info_entity.freezed.dart';

part 'tickers_info_entity.g.dart';

@freezed
class TickersInfoEntity with _$TickersInfoEntity {
  const factory TickersInfoEntity({
    @JsonKey(name: 'coins_num') required int coinsNum,
    required int time,
  }) = _TickersInfoEntity;

  factory TickersInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$TickersInfoEntityFromJson(json);
}
