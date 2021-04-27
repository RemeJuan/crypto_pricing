import 'dart:io';

import 'package:crypto_pricing/core/error/failures.dart';
import 'package:crypto_pricing/data/sources/tickers/tickers_remote_source.dart';
import 'package:crypto_pricing/domain/entities/tickers/tickers_entity.dart';
import 'package:crypto_pricing/domain/repositories/tickers/tickers_repository.dart';
import 'package:dartz/dartz.dart';

class TickersRepositoryImpl implements TickersRepository {
  final TickersRemoteSource remoteSource;

  TickersRepositoryImpl({
    required this.remoteSource,
  });

  @override
  Future<Either<Failure, TickersEntity>> getTickers() async {
    try {
      final response = await remoteSource.getTickers();
      return Right(response);
    } on AssertionError {
      return const Left(FormatFailure());
    } on HttpException {
      return const Left(HttpFailure());
    } catch (error) {
      return Left(GeneralFailure(message: error.toString()));
    }
  }
}
