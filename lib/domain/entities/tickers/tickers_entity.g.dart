// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickers_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TickersEntity _$_$_TickersEntityFromJson(Map<String, dynamic> json) {
  return _$_TickersEntity(
    data: (json['data'] as List<dynamic>)
        .map((e) => TickersDataEntity.fromJson(e as Map<String, dynamic>))
        .toList(),
    info: TickersInfoEntity.fromJson(json['info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TickersEntityToJson(_$_TickersEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
      'info': instance.info,
    };
