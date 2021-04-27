import 'dart:io';

class TestHelpers {
  static String fixture(String pathToFile) =>
      File('test/fixtures/$pathToFile').readAsStringSync();
}
