import 'package:crypto_pricing/data/sources/tickers/tickers_remote_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import '../../class_mocks/network_mocks.dart';
import '../../fixtures/tickers/fixture_tickers_entity.dart';
import '../../test_helpers.dart';

void main() {
  final data = TestHelpers.fixture('tickers/get_tickers.json');

  late TickersRemoteSource mockTickersRemoteSource;
  late MockNetworkManager mockNetworkManager;

  setUp(() {
    mockNetworkManager = MockNetworkManager();
    mockTickersRemoteSource = TickersRemoteSourceImpl(
      networkManager: mockNetworkManager,
    );
  });

  group('getTickers', () {
    const mockUrl = 'https://api.coinlore.net/api/tickers';
    setUp(() {
      when(mockNetworkManager.apiGet(any)).thenAnswer(
        (_) async => http.Response(data, 200),
      );
    });

    test(
        'should perform a GET request on a URL with digest being the endpoint and with correct headers',
        () async {
      //act
      await mockTickersRemoteSource.getTickers();
      //assert
      verify(mockNetworkManager.apiGet(mockUrl));
    });

    test('should return [TickersEntity] when the response code is 200',
        () async {
      //act
      final response = await mockTickersRemoteSource.getTickers();
      //assert
      expect(response, equals(fixtureTickers));
    });
  });
}
