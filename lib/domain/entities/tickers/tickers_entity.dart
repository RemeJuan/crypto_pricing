import 'package:crypto_pricing/domain/entities/tickers/tickers_info_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'tickers_data_entity.dart';

part 'tickers_entity.freezed.dart';

part 'tickers_entity.g.dart';

@freezed
class TickersEntity with _$TickersEntity {
  const factory TickersEntity({
    required List<TickersDataEntity> data,
    required TickersInfoEntity info,
  }) = _TickersEntity;

  factory TickersEntity.fromJson(Map<String, dynamic> json) =>
      _$TickersEntityFromJson(json);
}
