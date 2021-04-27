import 'package:adv_image_cache/adv_image_cache.dart';
import 'package:crypto_pricing/core/network/network_info.dart';
import 'package:crypto_pricing/core/network/network_manager.dart';
import 'package:crypto_pricing/data/sources/tickers/tickers_remote_source.dart';
import 'package:crypto_pricing/domain/entities/tickers/tickers_data_entity.dart';
import 'package:crypto_pricing/domain/entities/tickers/tickers_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

final tickerProvider = Provider(
  (ref) => TickersRemoteSourceImpl(
    networkManager: NetworkManager(
      networkInfo: NetworkInfoImpl(InternetConnectionChecker()),
      headers: {},
      client: http.Client(),
    ),
  ),
);

final responseProvider = FutureProvider<TickersEntity>(
  (ref) async {
    final tickerClient = ref.read(tickerProvider);
    return tickerClient.getTickers();
  },
);

class CryptoApp extends HookWidget {
  @override
  Widget build(context) {
    return Center(
      child: Consumer(
        builder: (context, watch, child) {
          final responseValue = watch(responseProvider);

          return responseValue.map(
            data: (data) {
              return _buildList(context, data.value.data);
            },
            loading: (_) => const CircularProgressIndicator(),
            error: (message) => Text(message.error.toString()),
          );
        },
      ),
    );
  }

  Widget _buildList(
    BuildContext context,
    List<TickersDataEntity> data,
  ) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];

        return ListTile(
          // leading: _cryptoIcon(context, item.symbol),
          title: Text(item.name),
          trailing: Text('${item.priceUsd} USD'),
        );
      },
    );
  }

  Widget _cryptoIcon(BuildContext context, String symbol) {
    final url = 'https://cryptoicons.org/api/icon/${symbol.toLowerCase()}/25';

    return Image(image: AdvImageCache(url));
  }
}
