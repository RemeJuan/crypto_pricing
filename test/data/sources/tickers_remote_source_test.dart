import 'package:crypto_pricing/data/sources/markets/markets_remote_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import '../../class_mocks/network_mocks.dart';
import '../../fixtures/markets/fixture_market_entity.dart';
import '../../test_helpers.dart';

void main() {
  final data = TestHelpers.fixture('markets/get_markets.json');

  late MarketsRemoteSource mockTickersRemoteSource;
  late MockNetworkManager mockNetworkManager;

  setUp(() {
    mockNetworkManager = MockNetworkManager();
    mockTickersRemoteSource = MarketsRemoteSourceImpl(
      networkManager: mockNetworkManager,
    );
  });

  group('getMarkets', () {
    const mockUrl = 'https://api.coinlore.net/api/tickers?limit=20';
    setUp(() {
      when(mockNetworkManager.apiGet(any)).thenAnswer(
        (_) async => http.Response(data, 200),
      );
    });

    test(
        'should perform a GET request on a URL with digest being the endpoint and with correct headers',
        () async {
      //act
      await mockTickersRemoteSource.getMarkets();
      //assert
      verify(mockNetworkManager.apiGet(mockUrl));
    });

    test('should return [TickersEntity] when the response code is 200',
        () async {
      //act
      final response = await mockTickersRemoteSource.getMarkets();
      //assert
      expect(response, equals(fixtureMarketsEntity));
    });
  });
}
