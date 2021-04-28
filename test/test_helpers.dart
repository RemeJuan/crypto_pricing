import 'dart:io';

import 'package:crypto_pricing/locator.dart';

class TestHelpers {
  static String fixture(String pathToFile) =>
      File('test/fixtures/$pathToFile').readAsStringSync();

  static String storagePath() {
    final directory = Directory.current.path;
    return '$directory/test';
  }

  static Future<void> setupTest() async {
    // Setup the application services
    initServices();
    getIt.allowReassignment = true;

    // For handling Image.network and SVGAsset.network calls
    HttpOverrides.global = null;
  }
}
