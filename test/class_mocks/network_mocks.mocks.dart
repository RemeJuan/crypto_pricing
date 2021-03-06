// Mocks generated by Mockito 5.0.5 from annotations
// in crypto_pricing/test/class_mocks/network_mocks.dart.
// Do not manually edit this file.

import 'dart:async' as _i8;
import 'dart:convert' as _i9;
import 'dart:io' as _i12;
import 'dart:typed_data' as _i3;

import 'package:crypto_pricing/core/network/network_info.dart' as _i6;
import 'package:crypto_pricing/core/network/network_manager.dart' as _i11;
import 'package:http/src/base_request.dart' as _i10;
import 'package:http/src/client.dart' as _i5;
import 'package:http/src/response.dart' as _i2;
import 'package:http/src/streamed_response.dart' as _i4;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeResponse extends _i1.Fake implements _i2.Response {}

class _FakeUint8List extends _i1.Fake implements _i3.Uint8List {}

class _FakeStreamedResponse extends _i1.Fake implements _i4.StreamedResponse {}

class _FakeClient extends _i1.Fake implements _i5.Client {}

class _FakeNetworkInfo extends _i1.Fake implements _i6.NetworkInfo {}

class _FakeDuration extends _i1.Fake implements Duration {}

class _FakeAddressCheckResult extends _i1.Fake
    implements _i7.AddressCheckResult {}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockClient extends _i1.Mock implements _i5.Client {
  MockClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<_i2.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<_i2.Response>.value(_FakeResponse()))
          as _i8.Future<_i2.Response>);
  @override
  _i8.Future<_i2.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<_i2.Response>.value(_FakeResponse()))
          as _i8.Future<_i2.Response>);
  @override
  _i8.Future<_i2.Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i9.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i2.Response>.value(_FakeResponse()))
          as _i8.Future<_i2.Response>);
  @override
  _i8.Future<_i2.Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i9.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i2.Response>.value(_FakeResponse()))
          as _i8.Future<_i2.Response>);
  @override
  _i8.Future<_i2.Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i9.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i2.Response>.value(_FakeResponse()))
          as _i8.Future<_i2.Response>);
  @override
  _i8.Future<_i2.Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i9.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i2.Response>.value(_FakeResponse()))
          as _i8.Future<_i2.Response>);
  @override
  _i8.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i8.Future<String>);
  @override
  _i8.Future<_i3.Uint8List> readBytes(Uri? url,
          {Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<_i3.Uint8List>.value(_FakeUint8List()))
          as _i8.Future<_i3.Uint8List>);
  @override
  _i8.Future<_i4.StreamedResponse> send(_i10.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<_i4.StreamedResponse>.value(_FakeStreamedResponse()))
          as _i8.Future<_i4.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i6.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.Future<bool> get isConnected =>
      (super.noSuchMethod(Invocation.getter(#isConnected),
          returnValue: Future<bool>.value(false)) as _i8.Future<bool>);
}

/// A class which mocks [NetworkManager].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkManager extends _i1.Mock implements _i11.NetworkManager {
  MockNetworkManager() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Client get client => (super.noSuchMethod(Invocation.getter(#client),
      returnValue: _FakeClient()) as _i5.Client);
  @override
  _i6.NetworkInfo get networkInfo =>
      (super.noSuchMethod(Invocation.getter(#networkInfo),
          returnValue: _FakeNetworkInfo()) as _i6.NetworkInfo);
  @override
  Map<String, String> get apiHeaders =>
      (super.noSuchMethod(Invocation.getter(#apiHeaders),
          returnValue: <String, String>{}) as Map<String, String>);
  @override
  set apiHeaders(Map<String, String>? _apiHeaders) =>
      super.noSuchMethod(Invocation.setter(#apiHeaders, _apiHeaders),
          returnValueForMissingStub: null);
  @override
  _i8.Future<_i2.Response> apiGet(String? url) =>
      (super.noSuchMethod(Invocation.method(#apiGet, [url]),
              returnValue: Future<_i2.Response>.value(_FakeResponse()))
          as _i8.Future<_i2.Response>);
  @override
  _i8.Future<_i2.Response> apiGetFile(String? url, _i12.File? file) =>
      (super.noSuchMethod(Invocation.method(#apiGetFile, [url, file]),
              returnValue: Future<_i2.Response>.value(_FakeResponse()))
          as _i8.Future<_i2.Response>);
}

/// A class which mocks [InternetConnectionChecker].
///
/// See the documentation for Mockito's code generation for more information.
class MockInternetConnectionChecker extends _i1.Mock
    implements _i7.InternetConnectionChecker {
  MockInternetConnectionChecker() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i7.AddressCheckOptions> get addresses =>
      (super.noSuchMethod(Invocation.getter(#addresses),
              returnValue: <_i7.AddressCheckOptions>[])
          as List<_i7.AddressCheckOptions>);
  @override
  set addresses(List<_i7.AddressCheckOptions>? _addresses) =>
      super.noSuchMethod(Invocation.setter(#addresses, _addresses),
          returnValueForMissingStub: null);
  @override
  Duration get checkInterval =>
      (super.noSuchMethod(Invocation.getter(#checkInterval),
          returnValue: _FakeDuration()) as Duration);
  @override
  set checkInterval(Duration? _checkInterval) =>
      super.noSuchMethod(Invocation.setter(#checkInterval, _checkInterval),
          returnValueForMissingStub: null);
  @override
  List<_i7.AddressCheckResult> get lastTryResults => (super.noSuchMethod(
      Invocation.getter(#lastTryResults),
      returnValue: <_i7.AddressCheckResult>[]) as List<_i7.AddressCheckResult>);
  @override
  _i8.Future<bool> get hasConnection =>
      (super.noSuchMethod(Invocation.getter(#hasConnection),
          returnValue: Future<bool>.value(false)) as _i8.Future<bool>);
  @override
  _i8.Future<_i7.InternetConnectionStatus> get connectionStatus =>
      (super.noSuchMethod(Invocation.getter(#connectionStatus),
              returnValue: Future<_i7.InternetConnectionStatus>.value(
                  _i7.InternetConnectionStatus.connected))
          as _i8.Future<_i7.InternetConnectionStatus>);
  @override
  _i8.Stream<_i7.InternetConnectionStatus> get onStatusChange =>
      (super.noSuchMethod(Invocation.getter(#onStatusChange),
              returnValue: Stream<_i7.InternetConnectionStatus>.empty())
          as _i8.Stream<_i7.InternetConnectionStatus>);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  bool get isActivelyChecking =>
      (super.noSuchMethod(Invocation.getter(#isActivelyChecking),
          returnValue: false) as bool);
  @override
  _i8.Future<_i7.AddressCheckResult> isHostReachable(
          _i7.AddressCheckOptions? options) =>
      (super.noSuchMethod(Invocation.method(#isHostReachable, [options]),
              returnValue: Future<_i7.AddressCheckResult>.value(
                  _FakeAddressCheckResult()))
          as _i8.Future<_i7.AddressCheckResult>);
}
