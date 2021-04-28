import 'package:crypto_pricing/data/sources/markets/markets_remote_source.dart';
import 'package:crypto_pricing/domain/entities/markets/markets_entity.dart';
import 'package:crypto_pricing/locator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final Provider<MarketsRemoteSource> marketsProvider = Provider(
  (ref) => getIt<MarketsRemoteSource>(),
);

final FutureProvider<MarketsEntity> marketsResponseProvider =
    FutureProvider<MarketsEntity>(
  (ref) async {
    final tickerClient = ref.read(marketsProvider);
    return tickerClient.getMarkets();
  },
);
