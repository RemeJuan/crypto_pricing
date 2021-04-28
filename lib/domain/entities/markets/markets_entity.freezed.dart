// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'markets_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketsEntity _$MarketsEntityFromJson(Map<String, dynamic> json) {
  return _MarketsEntity.fromJson(json);
}

/// @nodoc
class _$MarketsEntityTearOff {
  const _$MarketsEntityTearOff();

  _MarketsEntity call(List<MarketEntity> data) {
    return _MarketsEntity(
      data,
    );
  }

  MarketsEntity fromJson(Map<String, Object> json) {
    return MarketsEntity.fromJson(json);
  }
}

/// @nodoc
const $MarketsEntity = _$MarketsEntityTearOff();

/// @nodoc
mixin _$MarketsEntity {
  List<MarketEntity> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketsEntityCopyWith<MarketsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketsEntityCopyWith<$Res> {
  factory $MarketsEntityCopyWith(
          MarketsEntity value, $Res Function(MarketsEntity) then) =
      _$MarketsEntityCopyWithImpl<$Res>;
  $Res call({List<MarketEntity> data});
}

/// @nodoc
class _$MarketsEntityCopyWithImpl<$Res>
    implements $MarketsEntityCopyWith<$Res> {
  _$MarketsEntityCopyWithImpl(this._value, this._then);

  final MarketsEntity _value;
  // ignore: unused_field
  final $Res Function(MarketsEntity) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MarketEntity>,
    ));
  }
}

/// @nodoc
abstract class _$MarketsEntityCopyWith<$Res>
    implements $MarketsEntityCopyWith<$Res> {
  factory _$MarketsEntityCopyWith(
          _MarketsEntity value, $Res Function(_MarketsEntity) then) =
      __$MarketsEntityCopyWithImpl<$Res>;
  @override
  $Res call({List<MarketEntity> data});
}

/// @nodoc
class __$MarketsEntityCopyWithImpl<$Res>
    extends _$MarketsEntityCopyWithImpl<$Res>
    implements _$MarketsEntityCopyWith<$Res> {
  __$MarketsEntityCopyWithImpl(
      _MarketsEntity _value, $Res Function(_MarketsEntity) _then)
      : super(_value, (v) => _then(v as _MarketsEntity));

  @override
  _MarketsEntity get _value => super._value as _MarketsEntity;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_MarketsEntity(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MarketEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarketsEntity implements _MarketsEntity {
  const _$_MarketsEntity(this.data);

  factory _$_MarketsEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_MarketsEntityFromJson(json);

  @override
  final List<MarketEntity> data;

  @override
  String toString() {
    return 'MarketsEntity(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MarketsEntity &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$MarketsEntityCopyWith<_MarketsEntity> get copyWith =>
      __$MarketsEntityCopyWithImpl<_MarketsEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MarketsEntityToJson(this);
  }
}

abstract class _MarketsEntity implements MarketsEntity {
  const factory _MarketsEntity(List<MarketEntity> data) = _$_MarketsEntity;

  factory _MarketsEntity.fromJson(Map<String, dynamic> json) =
      _$_MarketsEntity.fromJson;

  @override
  List<MarketEntity> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MarketsEntityCopyWith<_MarketsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
