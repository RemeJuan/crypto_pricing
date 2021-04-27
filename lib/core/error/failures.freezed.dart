// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  ServerFailure serverFailure() {
    return const ServerFailure();
  }

  SocketFailure socketFailure() {
    return const SocketFailure();
  }

  HttpFailure httpFailure() {
    return const HttpFailure();
  }

  FormatFailure formatFailure() {
    return const FormatFailure();
  }

  AuthFailure authFailure({required String message}) {
    return AuthFailure(
      message: message,
    );
  }

  GeneralFailure generalFailure({required String message}) {
    return GeneralFailure(
      message: message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() socketFailure,
    required TResult Function() httpFailure,
    required TResult Function() formatFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String message) generalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? socketFailure,
    TResult Function()? httpFailure,
    TResult Function()? formatFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(HttpFailure value) httpFailure,
    required TResult Function(FormatFailure value) formatFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(HttpFailure value)? httpFailure,
    TResult Function(FormatFailure value)? formatFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;
}

/// @nodoc

class _$ServerFailure implements ServerFailure {
  const _$ServerFailure();

  @override
  String toString() {
    return 'Failure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() socketFailure,
    required TResult Function() httpFailure,
    required TResult Function() formatFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? socketFailure,
    TResult Function()? httpFailure,
    TResult Function()? formatFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(HttpFailure value) httpFailure,
    required TResult Function(FormatFailure value) formatFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(HttpFailure value)? httpFailure,
    TResult Function(FormatFailure value)? formatFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure() = _$ServerFailure;
}

/// @nodoc
abstract class $SocketFailureCopyWith<$Res> {
  factory $SocketFailureCopyWith(
          SocketFailure value, $Res Function(SocketFailure) then) =
      _$SocketFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocketFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $SocketFailureCopyWith<$Res> {
  _$SocketFailureCopyWithImpl(
      SocketFailure _value, $Res Function(SocketFailure) _then)
      : super(_value, (v) => _then(v as SocketFailure));

  @override
  SocketFailure get _value => super._value as SocketFailure;
}

/// @nodoc

class _$SocketFailure implements SocketFailure {
  const _$SocketFailure();

  @override
  String toString() {
    return 'Failure.socketFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SocketFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() socketFailure,
    required TResult Function() httpFailure,
    required TResult Function() formatFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return socketFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? socketFailure,
    TResult Function()? httpFailure,
    TResult Function()? formatFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (socketFailure != null) {
      return socketFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(HttpFailure value) httpFailure,
    required TResult Function(FormatFailure value) formatFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return socketFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(HttpFailure value)? httpFailure,
    TResult Function(FormatFailure value)? formatFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (socketFailure != null) {
      return socketFailure(this);
    }
    return orElse();
  }
}

abstract class SocketFailure implements Failure {
  const factory SocketFailure() = _$SocketFailure;
}

/// @nodoc
abstract class $HttpFailureCopyWith<$Res> {
  factory $HttpFailureCopyWith(
          HttpFailure value, $Res Function(HttpFailure) then) =
      _$HttpFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$HttpFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $HttpFailureCopyWith<$Res> {
  _$HttpFailureCopyWithImpl(
      HttpFailure _value, $Res Function(HttpFailure) _then)
      : super(_value, (v) => _then(v as HttpFailure));

  @override
  HttpFailure get _value => super._value as HttpFailure;
}

/// @nodoc

class _$HttpFailure implements HttpFailure {
  const _$HttpFailure();

  @override
  String toString() {
    return 'Failure.httpFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HttpFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() socketFailure,
    required TResult Function() httpFailure,
    required TResult Function() formatFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return httpFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? socketFailure,
    TResult Function()? httpFailure,
    TResult Function()? formatFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(HttpFailure value) httpFailure,
    required TResult Function(FormatFailure value) formatFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return httpFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(HttpFailure value)? httpFailure,
    TResult Function(FormatFailure value)? formatFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (httpFailure != null) {
      return httpFailure(this);
    }
    return orElse();
  }
}

abstract class HttpFailure implements Failure {
  const factory HttpFailure() = _$HttpFailure;
}

/// @nodoc
abstract class $FormatFailureCopyWith<$Res> {
  factory $FormatFailureCopyWith(
          FormatFailure value, $Res Function(FormatFailure) then) =
      _$FormatFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormatFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $FormatFailureCopyWith<$Res> {
  _$FormatFailureCopyWithImpl(
      FormatFailure _value, $Res Function(FormatFailure) _then)
      : super(_value, (v) => _then(v as FormatFailure));

  @override
  FormatFailure get _value => super._value as FormatFailure;
}

/// @nodoc

class _$FormatFailure implements FormatFailure {
  const _$FormatFailure();

  @override
  String toString() {
    return 'Failure.formatFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FormatFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() socketFailure,
    required TResult Function() httpFailure,
    required TResult Function() formatFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return formatFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? socketFailure,
    TResult Function()? httpFailure,
    TResult Function()? formatFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (formatFailure != null) {
      return formatFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(HttpFailure value) httpFailure,
    required TResult Function(FormatFailure value) formatFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return formatFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(HttpFailure value)? httpFailure,
    TResult Function(FormatFailure value)? formatFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (formatFailure != null) {
      return formatFailure(this);
    }
    return orElse();
  }
}

abstract class FormatFailure implements Failure {
  const factory FormatFailure() = _$FormatFailure;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(
      AuthFailure _value, $Res Function(AuthFailure) _then)
      : super(_value, (v) => _then(v as AuthFailure));

  @override
  AuthFailure get _value => super._value as AuthFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailure implements AuthFailure {
  const _$AuthFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.authFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      _$AuthFailureCopyWithImpl<AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() socketFailure,
    required TResult Function() httpFailure,
    required TResult Function() formatFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return authFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? socketFailure,
    TResult Function()? httpFailure,
    TResult Function()? formatFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(HttpFailure value) httpFailure,
    required TResult Function(FormatFailure value) formatFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(HttpFailure value)? httpFailure,
    TResult Function(FormatFailure value)? formatFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements Failure {
  const factory AuthFailure({required String message}) = _$AuthFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralFailureCopyWith<$Res> {
  factory $GeneralFailureCopyWith(
          GeneralFailure value, $Res Function(GeneralFailure) then) =
      _$GeneralFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$GeneralFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $GeneralFailureCopyWith<$Res> {
  _$GeneralFailureCopyWithImpl(
      GeneralFailure _value, $Res Function(GeneralFailure) _then)
      : super(_value, (v) => _then(v as GeneralFailure));

  @override
  GeneralFailure get _value => super._value as GeneralFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(GeneralFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GeneralFailure implements GeneralFailure {
  const _$GeneralFailure({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.generalFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GeneralFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $GeneralFailureCopyWith<GeneralFailure> get copyWith =>
      _$GeneralFailureCopyWithImpl<GeneralFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() socketFailure,
    required TResult Function() httpFailure,
    required TResult Function() formatFailure,
    required TResult Function(String message) authFailure,
    required TResult Function(String message) generalFailure,
  }) {
    return generalFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? socketFailure,
    TResult Function()? httpFailure,
    TResult Function()? formatFailure,
    TResult Function(String message)? authFailure,
    TResult Function(String message)? generalFailure,
    required TResult orElse(),
  }) {
    if (generalFailure != null) {
      return generalFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(SocketFailure value) socketFailure,
    required TResult Function(HttpFailure value) httpFailure,
    required TResult Function(FormatFailure value) formatFailure,
    required TResult Function(AuthFailure value) authFailure,
    required TResult Function(GeneralFailure value) generalFailure,
  }) {
    return generalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(SocketFailure value)? socketFailure,
    TResult Function(HttpFailure value)? httpFailure,
    TResult Function(FormatFailure value)? formatFailure,
    TResult Function(AuthFailure value)? authFailure,
    TResult Function(GeneralFailure value)? generalFailure,
    required TResult orElse(),
  }) {
    if (generalFailure != null) {
      return generalFailure(this);
    }
    return orElse();
  }
}

abstract class GeneralFailure implements Failure {
  const factory GeneralFailure({required String message}) = _$GeneralFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralFailureCopyWith<GeneralFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
