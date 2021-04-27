import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../core/network/network_info.dart';
import '../core/network/network_manager.dart';
import '../data/sources/tickers/tickers_remote_source.dart';
import '../domain/entities/tickers/tickers_entity.dart';

final Provider<TickersRemoteSourceImpl> _provider = Provider(
  (ref) => TickersRemoteSourceImpl(
    networkManager: NetworkManager(
      networkInfo: NetworkInfoImpl(InternetConnectionChecker()),
      client: http.Client(),
    ),
  ),
);

final FutureProvider<TickersEntity> tickerResponseProvider =
    FutureProvider<TickersEntity>(
  (ref) async {
    final tickerClient = ref.read(_provider);
    return tickerClient.getTickers();
  },
);
