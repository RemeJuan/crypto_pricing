import 'package:crypto_pricing/locator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/sources/tickers/tickers_remote_source.dart';
import '../domain/entities/tickers/tickers_entity.dart';

final Provider<TickersRemoteSource> _provider = Provider(
  (ref) => getIt<TickersRemoteSource>(),
);

final FutureProvider<TickersEntity> tickerResponseProvider =
    FutureProvider<TickersEntity>(
  (ref) async {
    final tickerClient = ref.read(_provider);
    return tickerClient.getTickers();
  },
);
