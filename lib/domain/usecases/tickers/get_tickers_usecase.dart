import 'package:crypto_pricing/core/domain/usecases/usecase.dart';
import 'package:crypto_pricing/core/error/failures.dart';
import 'package:crypto_pricing/domain/entities/tickers/tickers_entity.dart';
import 'package:crypto_pricing/domain/repositories/tickers/tickers_repository.dart';
import 'package:dartz/dartz.dart';

class GetTickersUseCase implements UseCase<TickersEntity, NoParams> {
  final TickersRepository repository;

  GetTickersUseCase(this.repository);

  @override
  Future<Either<Failure, TickersEntity>> call(NoParams params) async {
    return repository.getTickers();
  }
}
