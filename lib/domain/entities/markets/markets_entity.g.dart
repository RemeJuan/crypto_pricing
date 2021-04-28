// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markets_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MarketsEntity _$_$_MarketsEntityFromJson(Map<String, dynamic> json) {
  return _$_MarketsEntity(
    (json['data'] as List<dynamic>)
        .map((e) => MarketEntity.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MarketsEntityToJson(_$_MarketsEntity instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
