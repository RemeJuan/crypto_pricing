import 'dart:convert';

import 'package:crypto_pricing/domain/entities/markets/markets_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/markets/fixture_market_entity.dart';
import '../../../test_helpers.dart';

void main() {
  final decodedJson =
      jsonDecode(TestHelpers.fixture('markets/get_markets.json')) as List;

  test('should be a subclass of [MarketEntity]', () async {
    //assert
    expect(fixtureMarketsEntity, isA<MarketsEntity>());
  });

  group('fromJson', () {
    test('should return a valid model', () async {
      //act
      final result = MarketsEntity.fromJson(
        <String, dynamic>{'data': decodedJson},
      );
      //assert
      expect(result, fixtureMarketsEntity);
    });
  });

  group('toJson', () {
    test('should return a jsonMap with the correct data', () async {
      //act
      final result = <Map<String, dynamic>>[
        <String, dynamic>{
          ...fixtureBtcData.toJson(),
          'roi': null,
        },
        <String, dynamic>{
          ...fixtureEthData.toJson(),
          'roi': null,
        },
      ];
      //assert
      expect(result, decodedJson);
    });
  });
}
