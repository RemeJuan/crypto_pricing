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
        title: 'Cryto Pricing',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Crypto Pricing'),
          ),
          body: CryptoData(),
        ),
      ),
    );
  }
}
