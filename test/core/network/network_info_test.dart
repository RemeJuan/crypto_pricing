import 'package:crypto_pricing/core/network/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../class_mocks/network_mocks.dart';

void main() {
  late NetworkInfo networkInfo;
  late MockInternetConnectionChecker mockInternetConnectionChecker;

  setUp(() {
    mockInternetConnectionChecker = MockInternetConnectionChecker();
    networkInfo = NetworkInfoImpl(mockInternetConnectionChecker);
  });

  test('should return connection status', () async {
    //arrange
    when(mockInternetConnectionChecker.hasConnection).thenAnswer(
      (_) async => Future.value(true),
    );
    //act
    final response = await networkInfo.isConnected;
    //assert
    expect(response, true);
  });
}
