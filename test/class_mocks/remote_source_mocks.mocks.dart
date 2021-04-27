// Mocks generated by Mockito 5.0.5 from annotations
// in crypto_pricing/test/class_mocks/remote_source_mocks.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:crypto_pricing/data/sources/tickers/tickers_remote_source.dart'
    as _i3;
import 'package:crypto_pricing/domain/entities/tickers/tickers_entity.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeTickersEntity extends _i1.Fake implements _i2.TickersEntity {}

/// A class which mocks [TickersRemoteSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTickersRemoteSource extends _i1.Mock
    implements _i3.TickersRemoteSource {
  MockTickersRemoteSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.TickersEntity> getTickers() => (super.noSuchMethod(
          Invocation.method(#getTickers, []),
          returnValue: Future<_i2.TickersEntity>.value(_FakeTickersEntity()))
      as _i4.Future<_i2.TickersEntity>);
}