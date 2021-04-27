import 'dart:io';

class TestHelpers {
  static String fixture(String pathToFile) =>
      File('test/fixtures/$pathToFile').readAsStringSync();

  static String storagePath() {
    final directory = Directory.current.path;
    return '$directory/test';
  }
}
