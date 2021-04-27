import 'dart:io';

import 'package:crypto_pricing/core/error/failures.dart';
import 'package:crypto_pricing/data/repositories/tickers/tickers_repository_impl.dart';
import 'package:crypto_pricing/domain/entities/tickers/tickers_entity.dart';
import 'package:crypto_pricing/domain/repositories/tickers/tickers_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../class_mocks/remote_source_mocks.dart';
import '../../fixtures/tickers/fixture_tickers_entity.dart';

void main() {
  late TickersRepository repository;
  late MockTickersRemoteSource remoteSource;

  setUp(() {
    remoteSource = MockTickersRemoteSource();
    repository = TickersRepositoryImpl(
      remoteSource: remoteSource,
    );
  });

  group('getTickers', () {
    test('should should return data when the remote source is successful',
        () async {
      //arrange
      when(remoteSource.getTickers()).thenAnswer((_) async => fixtureTickers);
      //act
      final response = await repository.getTickers();
      //assert
      verify(remoteSource.getTickers());
      expect(
        response,
        equals(const Right<dynamic, TickersEntity>(fixtureTickers)),
      );
    });

    test('should return [FormatFailure] when the remote call fails', () async {
      //arrange
      when(remoteSource.getTickers()).thenThrow(AssertionError());
      //act
      final response = await repository.getTickers();
      //assert
      verify(remoteSource.getTickers());
      expect(
        response,
        equals(const Left<FormatFailure, dynamic>(FormatFailure())),
      );
    });

    test('should return [HttpFailure] when the remote call fails', () async {
      //arrange
      when(remoteSource.getTickers()).thenThrow(
        const HttpException('message'),
      );
      //act
      final response = await repository.getTickers();
      //assert
      verify(remoteSource.getTickers());
      expect(response, equals(const Left<HttpFailure, dynamic>(HttpFailure())));
    });

    test('should return [ServerFailure] when the remote call fails', () async {
      //arrange
      when(remoteSource.getTickers()).thenThrow(Exception());
      //act
      final response = await repository.getTickers();
      //assert
      verify(remoteSource.getTickers());
      expect(
        response,
        equals(
          const Left<GeneralFailure, dynamic>(
            GeneralFailure(message: 'Exception'),
          ),
        ),
      );
    });
  });
}
