import 'dart:io';

import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'network_info.dart';

class NetworkManager {
  final http.Client client;
  final NetworkInfo networkInfo;

  NetworkManager({
    required this.client,
    required this.networkInfo,
  });

  Map<String, String> apiHeaders = {
    'Origin': 'crypto_tracking.codemagic.app',
    'Access-Control-Allow-Origin': '*',
  };

  Future<http.Response> apiGet(String url) async {
    if (!foundation.kIsWeb) {
      final connected = await networkInfo.isConnected;

      if (!connected) throw const SocketException('Offline');
    }

    final uri = kDebugMode
        ? Uri.parse('https://cors-anywhere.herokuapp.com/$url')
        : Uri.parse(url);

    final response = await client.get(uri, headers: apiHeaders);

    foundation.debugPrint('$url - GET ${response.statusCode}');

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception();
    }
  }

  Future<http.Response> apiGetFile(String url, File file) async {
    final connected = await networkInfo.isConnected;

    if (!connected) throw const SocketException('Offline');

    try {
      final uri = kDebugMode
          ? Uri.parse('https://cors-anywhere.herokuapp.com/$url')
          : Uri.parse(url);

      final response = await client.get(uri, headers: apiHeaders);

      foundation.debugPrint('$url, ${response.statusCode}');

      if (response.statusCode != 200) {
        throw 'Unable to download asset: ${response.statusCode}';
      }

      await file.writeAsBytes(response.bodyBytes);

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
