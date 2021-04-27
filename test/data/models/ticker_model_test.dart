import 'dart:convert';

import 'package:crypto_pricing/domain/entities/tickers/tickers_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixtures/tickers/fixture_tickers_entity.dart';
import '../../test_helpers.dart';

void main() {
  final decodedJson =
      jsonDecode(TestHelpers.fixture('tickers/get_tickers.json'))
          as Map<String, dynamic>;

  test('should be a subclass of [DigestEntity]', () async {
    //assert
    expect(fixtureTickers, isA<TickersEntity>());
  });

  group('fromJson', () {
    test('should return a valid model', () async {
      //act
      final result = TickersEntity.fromJson(decodedJson);
      //assert
      expect(result, fixtureTickers);
    });
  });

  group('toJson', () {
    test('should return a jsonMap with the correct data', () async {
      //act
      final result = {
        'data': <Map<String, dynamic>>[
          fixtureBtcData.toJson(),
          fixtureEthData.toJson(),
        ],
        'info': fixtureInfoData.toJson(),
      };
      //assert
      expect(result, decodedJson);
    });
  });
}