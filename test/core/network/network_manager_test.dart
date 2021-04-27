import 'dart:io';

import 'package:crypto_pricing/core/network/network_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import '../../class_mocks/network_mocks.dart';
import '../../test_helpers.dart';

void main() {
  late MockNetworkInfo mockNetworkInfo;
  late NetworkManager networkManager;
  late MockClient mockClient;

  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    mockClient = MockClient();
    networkManager = NetworkManager(
      client: mockClient,
      networkInfo: mockNetworkInfo,
    );
  });

  const mockData = 'Success';
  const mockUrl = 'mock-url';
  final mockUri = Uri.parse(mockUrl);
  final path = TestHelpers.storagePath();

  group('apiGet', () {
    test('should check if device is online', () async {
      //arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockClient.get(any, headers: anyNamed('headers'))).thenAnswer(
        (_) async => http.Response(mockData, 200),
      );
      //act
      await networkManager.apiGet('');
      //assert
      verify(mockNetworkInfo.isConnected);
    });

    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      test('should perform a GET request with provided URL', () async {
        //arrange
        when(mockClient.get(any)).thenAnswer(
          (_) async => http.Response(mockData, 200),
        );
        //act
        await networkManager.apiGet(mockUrl);
        //assert
        verify(mockClient.get(mockUri));
      });

      test('should throw [ServerException] when the response code != 200',
          () async {
        //arrange
        when(mockClient.get(any)).thenAnswer(
          (_) async => http.Response('Something happened', 404),
        ); //act
        final call = networkManager.apiGet;
        //assert
        expect(() => call(mockUrl), throwsA(isA<Exception>()));
      });
    });

    group('device is offline', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      test('should throw [SocketException] when the remote call fails',
          () async {
        //act
        final call = networkManager.apiGet;
        //assert
        expect(() => call(mockUrl), throwsA(isA<SocketException>()));
      });
    });
  });

  group('apiFileGet', () {
    test('should check if device is online', () async {
      //arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(mockClient.get(any)).thenAnswer(
        (_) async => http.Response(mockData, 200),
      );
      //act
      await networkManager.apiGetFile('', File('$path/files/mock_file'));
      //assert
      verify(mockNetworkInfo.isConnected);
    });

    group('device is online', () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      test('should perform a GET request with provided URL and headers',
          () async {
        //arrange
        when(mockClient.get(any)).thenAnswer(
          (_) async => http.Response(mockData, 200),
        );
        final file = File('$path/files/mock_file');
        //act
        await networkManager.apiGetFile(mockUrl, file);
        //assert
        verify(mockClient.get(mockUri));
      });

      test('should throw [ServerException] when the response code != 200',
          () async {
        //arrange
        when(mockClient.get(
          any,
        )).thenAnswer(
          (_) async => http.Response('Something happened', 404),
        );
        final file = File('$path/files/mock_file');
        //act
        final call = networkManager.apiGetFile;
        //assert
        expect(
          () => call(mockUrl, file),
          throwsA('Unable to download asset: 404 $path/files/mock_file'),
        );
      });
    });
  });
}
