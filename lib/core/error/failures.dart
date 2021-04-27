import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure() = ServerFailure;

  const factory Failure.socketFailure() = SocketFailure;

  const factory Failure.httpFailure() = HttpFailure;

  const factory Failure.formatFailure() = FormatFailure;

  const factory Failure.authFailure({
    required String message,
  }) = AuthFailure;

  const factory Failure.generalFailure({
    required String message,
  }) = GeneralFailure;
}
