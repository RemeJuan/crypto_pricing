import 'dart:convert';

import 'package:crypto_pricing/core/network/endpoint_builder.dart';
import 'package:crypto_pricing/core/network/network_manager.dart';
import 'package:crypto_pricing/domain/entities/markets/markets_entity.dart';

abstract class MarketsRemoteSource {
  Future<MarketsEntity> getMarkets();
}

class MarketsRemoteSourceImpl implements MarketsRemoteSource {
  final NetworkManager networkManager;

  MarketsRemoteSourceImpl({
    required this.networkManager,
  });

  static final String _path = 'tickers';

  @override
  Future<MarketsEntity> getMarkets() async {
    final url = EndpointBuilder.url(
      _path,
      queryParameters: <String, dynamic>{'limit': '20'},
    );

    final response = await networkManager.apiGet(url);
    final decoded = jsonDecode(response.body) as List;

    return MarketsEntity.fromJson(<String, dynamic>{'data': decoded});
  }
}
