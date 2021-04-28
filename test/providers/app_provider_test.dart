import 'package:crypto_pricing/domain/entities/markets/markets_entity.dart';
import 'package:crypto_pricing/providers/app_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

import '../class_mocks/remote_source_mocks.dart';
import '../fixtures/markets/fixture_market_entity.dart';

void main() {
  late MockMarketsRemoteSource mockMarketsRemoteSource;

  late ProviderContainer container;

  setUp(() {
    mockMarketsRemoteSource = MockMarketsRemoteSource();
  });

  test('should initialize with loading state', () async {
    //arrange
    when(mockMarketsRemoteSource.getMarkets()).thenAnswer(
      (_) async => fixtureMarketsEntity,
    );
    container = ProviderContainer(
      overrides: [
        marketsProvider.overrideWithProvider(
          Provider((_) => mockMarketsRemoteSource),
        ),
      ],
    );
    //assert
    expect(
      container.read(marketsResponseProvider),
      const AsyncValue<MarketsEntity>.loading(),
    );

    /// Wait for the request to finish
    await Future<void>.value();

    expect(
      container.read(marketsResponseProvider),
      const AsyncValue<MarketsEntity>.data(fixtureMarketsEntity),
    );
  });
}
