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

  static final String _path = 'coins/markets';

  @override
  Future<MarketsEntity> getMarkets() async {
    const qp = <String, String>{
      'vs_currency': 'usd',
      'order': 'market_cap_desc',
      'per_page': '20',
      'page': '1',
      'sparkline': 'false',
      'price_change_percentage': '1h,24h,7d',
    };

    final url = EndpointBuilder.url(
      _path,
      queryParameters: qp,
    );

    final response = await networkManager.apiGet(url);
    final decoded = jsonDecode(response.body) as List;
    return MarketsEntity.fromJson(<String, dynamic>{'data': decoded});
  }
}
