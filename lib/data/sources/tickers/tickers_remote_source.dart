import 'dart:convert';

import 'package:crypto_pricing/core/network/endpoint_builder.dart';
import 'package:crypto_pricing/core/network/network_manager.dart';
import 'package:crypto_pricing/domain/entities/tickers/tickers_entity.dart';

abstract class TickersRemoteSource {
  Future<TickersEntity> getTickers();
}

class TickersRemoteSourceImpl implements TickersRemoteSource {
  final NetworkManager networkManager;

  TickersRemoteSourceImpl({
    required this.networkManager,
  });

  static final String _path = 'tickers';

  @override
  Future<TickersEntity> getTickers() async {
    final url = EndpointBuilder.url(
      _path,
      queryParameters: <String, dynamic>{'limit': '20'},
    );

    final response = await networkManager.apiGet(url);
    final decoded = jsonDecode(response.body) as Map<String, dynamic>;

    return TickersEntity.fromJson(decoded);
  }
}
