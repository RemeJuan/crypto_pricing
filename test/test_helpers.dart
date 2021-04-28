import 'dart:io';

import 'package:crypto_pricing/locator.dart';
import 'package:flutter/services.dart';

class TestHelpers {
  static String fixture(String pathToFile) =>
      File('test/fixtures/$pathToFile').readAsStringSync();

  static String storagePath() {
    final directory = Directory.current.path;
    return '$directory/test';
  }

  static Future<void> setupTest() async {
    const channel = MethodChannel(
      'plugins.flutter.io/path_provider',
    );
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '${storagePath()}/files';
    });

    // Setup the application services
    initServices();
    getIt.allowReassignment = true;

    // For handling Image.network and SVGAsset.network calls
    HttpOverrides.global = null;
  }
}
