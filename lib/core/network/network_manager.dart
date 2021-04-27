import 'package:flutter/foundation.dart' as foundation;
import 'package:http/http.dart' as http;
import 'package:universal_io/io.dart';

import 'network_info.dart';

class NetworkManager {
  final http.Client client;
  final Map<String, String> headers;
  final NetworkInfo networkInfo;

  NetworkManager({
    required this.client,
    required this.headers,
    required this.networkInfo,
  });

  Future<http.Response> apiGet(String url) async {
    final connected = await networkInfo.isConnected;

    if (!connected) throw const SocketException('Offline');

    final response = await client.get(Uri.parse(url));

    foundation.debugPrint('$url - GET ${response.statusCode}');

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception();
    }
  }
}
