import 'package:crypto_pricing/app.dart';
import 'package:crypto_pricing/locator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  initServices();

  runApp(CryptoApp());
}

class CryptoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Cryto Tracker',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Crypto Tracker'),
          ),
          body: CryptoData(),
        ),
      ),
    );
  }
}
