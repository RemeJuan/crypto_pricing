import 'package:crypto_pricing/core/error/failures.dart';
import 'package:crypto_pricing/domain/entities/tickers/tickers_entity.dart';
import 'package:dartz/dartz.dart';

abstract class TickersRepository {
  Future<Either<Failure, TickersEntity>> getTickers();
}
