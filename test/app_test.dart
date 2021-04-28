import 'package:crypto_pricing/core/network/network_manager.dart';
import 'package:crypto_pricing/locator.dart';
import 'package:crypto_pricing/main.dart';
import 'package:crypto_pricing/providers/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'class_mocks/network_mocks.dart';
import 'fixtures/markets/fixture_market_entity.dart';
import 'test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockNetworkManager mockNetworkManager;

  setUp(() async {
    await TestHelpers.setupTest();

    mockNetworkManager = MockNetworkManager();

    getIt.registerSingleton<NetworkManager>(mockNetworkManager);

    when(mockNetworkManager.apiGetFile(any, any)).thenAnswer(
      (_) async => http.Response('', 200),
    );
    when(mockNetworkManager.apiHeaders).thenReturn({});
  });

  testWidgets('CryptoApp: Loading', (tester) async {
    final widget = ProviderScope(
      overrides: [
        marketsResponseProvider.overrideWithValue(
          const AsyncValue.loading(),
        ),
      ],
      child: CryptoApp(),
    );

    await tester.pumpWidget(widget);

    expect(
      find.byType(CircularProgressIndicator),
      findsOneWidget,
    );
  });

  testWidgets('CryptoApp: Success', (tester) async {
    final widget = ProviderScope(
      overrides: [
        marketsResponseProvider.overrideWithValue(
          const AsyncValue.data(fixtureMarketsEntity),
        ),
      ],
      child: CryptoApp(),
    );

    await tester.pumpWidget(widget);

    await tester.pump();

    // No-longer loading
    expect(
      find.byType(CircularProgressIndicator),
      findsNothing,
    );

    expect(find.byType(ListTile), findsNWidgets(2));
  });

  testWidgets('CryptoApp: Error', (tester) async {
    const errorMessage = 'failed';

    final widget = ProviderScope(
      overrides: [
        marketsResponseProvider.overrideWithValue(
          AsyncValue.error(errorMessage),
        ),
      ],
      child: CryptoApp(),
    );

    await tester.pumpWidget(widget);

    expect(
      find.text(errorMessage),
      findsOneWidget,
    );
  });
}
