import 'package:crypto_pricing/core/network/network_info.dart';
import 'package:crypto_pricing/core/network/network_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'data/sources/tickers/tickers_remote_source.dart';

GetIt getIt = GetIt.instance;

void initServices() {
  getIt.registerSingleton<InternetConnectionChecker>(
    InternetConnectionChecker(),
  );
  getIt.registerSingleton<http.Client>(
    http.Client(),
  );
  getIt.registerSingleton<NetworkInfo>(
    NetworkInfoImpl(
      getIt(),
    ),
  );
  getIt.registerSingleton<NetworkManager>(
    NetworkManager(
      client: getIt(),
      networkInfo: getIt(),
    ),
  );
  getIt.registerSingleton<TickersRemoteSource>(
    TickersRemoteSourceImpl(
      networkManager: getIt(),
    ),
  );
}
