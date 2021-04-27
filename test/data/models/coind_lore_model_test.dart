import 'dart:convert';

import 'package:crypto_pricing/domain/entities/tickers/coin_lore_tickers.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/tickers/fixture_tickers_entity.dart';
import '../../test_helpers.dart';

void main() {
  final decodedJson =
      jsonDecode(TestHelpers.fixture('tickers/get_tickers.json'))
          as Map<String, dynamic>;

  test('should be a subclass of [DigestEntity]', () async {
    //assert
    expect(fixtureCoinLoreTickers, isA<CoinLoreTickersEntity>());
  });

  group('fromJson', () {
    test('should return a valid model', () async {
      //act
      final result = CoinLoreTickersEntity.fromJson(decodedJson);
      //assert
      expect(result, fixtureCoinLoreTickers);
    });
  });

  group('toJson', () {
    test('should return a jsonMap with the correct data', () async {
      //act
      final result = {
        "data": <Map<String, dynamic>>[
          fixtureBtcData.toJson(),
          fixtureEthData.toJson(),
        ],
        "info": fixtureInfoData.toJson(),
      };
      //assert
      expect(result, decodedJson);
    });
  });
}
