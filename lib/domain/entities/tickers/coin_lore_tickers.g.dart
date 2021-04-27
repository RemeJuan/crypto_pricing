// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_lore_tickers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinLoreTickersEntity _$_$_CoinLoreTickersEntityFromJson(
    Map<String, dynamic> json) {
  return _$_CoinLoreTickersEntity(
    data: (json['data'] as List<dynamic>)
        .map((e) =>
            CoinLoreTickersDataEntity.fromJson(e as Map<String, dynamic>))
        .toList(),
    info: CoinLoreTickersInfoEntity.fromJson(
        json['info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CoinLoreTickersEntityToJson(
        _$_CoinLoreTickersEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
      'info': instance.info,
    };
