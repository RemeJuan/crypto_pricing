import 'package:crypto_pricing/core/network/network_manager.dart';
import 'package:crypto_pricing/locator.dart';
import 'package:crypto_pricing/shared/widgets/offline_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../class_mocks/network_mocks.dart';
import '../../test_helpers.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late MockNetworkManager mockNetworkManager;

  setUp(() async {
    await TestHelpers.setupTest();

    mockNetworkManager = MockNetworkManager();

    getIt.registerSingleton<NetworkManager>(mockNetworkManager);
  });

  testWidgets('should render Image.network', (tester) async {
    final widget = ProviderScope(
      child: OfflineImage(
        url: 'https://mock.url/mock_image.png',
        fileName: '',
      ),
    );

    await tester.pumpWidget(widget);

    await tester.pumpAndSettle();

    expect(find.byKey(const Key('IMAGE_NETWORK')), findsOneWidget);
    expect(find.byKey(const Key('IMAGE_FILE')), findsNothing);
  });

  testWidgets('should render Image.file', (tester) async {
    final widget = ProviderScope(
      child: OfflineImage(
        url: 'https://mock.url/mock_image.png',
        fileName: '',
      ),
    );

    await tester.pumpWidget(widget);

    await tester.pumpAndSettle();

    expect(find.byKey(const Key('IMAGE_FILE')), findsOneWidget);
    expect(find.byKey(const Key('IMAGE_NETWORK')), findsNothing);
  });
}
