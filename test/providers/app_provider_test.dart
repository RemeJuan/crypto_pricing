import 'package:crypto_pricing/domain/entities/tickers/tickers_entity.dart';
import 'package:crypto_pricing/providers/app_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

import '../class_mocks/remote_source_mocks.dart';
import '../fixtures/tickers/fixture_tickers_entity.dart';

void main() {
  late MockTickersRemoteSource mockTickersRemoteSource;

  late ProviderContainer container;

  setUp(() {
    mockTickersRemoteSource = MockTickersRemoteSource();
  });

  test('should initialize with loading state', () async {
    //arrange
    when(mockTickersRemoteSource.getTickers()).thenAnswer(
      (_) async => fixtureTickers,
    );
    container = ProviderContainer(
      overrides: [
        tickerProvider.overrideWithProvider(
          Provider((_) => mockTickersRemoteSource),
        ),
      ],
    );
    //assert
    expect(
      container.read(tickerResponseProvider),
      const AsyncValue<TickersEntity>.loading(),
    );

    /// Wait for the request to finish
    await Future<void>.value();

    expect(
      container.read(tickerResponseProvider),
      const AsyncValue<TickersEntity>.data(fixtureTickers),
    );
  });
}
