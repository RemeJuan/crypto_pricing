// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coin_lore_tickers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinLoreTickersEntity _$CoinLoreTickersEntityFromJson(
    Map<String, dynamic> json) {
  return _CoinLoreTickersEntity.fromJson(json);
}

/// @nodoc
class _$CoinLoreTickersEntityTearOff {
  const _$CoinLoreTickersEntityTearOff();

  _CoinLoreTickersEntity call(
      {required List<CoinLoreTickersDataEntity> data,
      required CoinLoreTickersInfoEntity info}) {
    return _CoinLoreTickersEntity(
      data: data,
      info: info,
    );
  }

  CoinLoreTickersEntity fromJson(Map<String, Object> json) {
    return CoinLoreTickersEntity.fromJson(json);
  }
}

/// @nodoc
const $CoinLoreTickersEntity = _$CoinLoreTickersEntityTearOff();

/// @nodoc
mixin _$CoinLoreTickersEntity {
  List<CoinLoreTickersDataEntity> get data =>
      throw _privateConstructorUsedError;
  CoinLoreTickersInfoEntity get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinLoreTickersEntityCopyWith<CoinLoreTickersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinLoreTickersEntityCopyWith<$Res> {
  factory $CoinLoreTickersEntityCopyWith(CoinLoreTickersEntity value,
          $Res Function(CoinLoreTickersEntity) then) =
      _$CoinLoreTickersEntityCopyWithImpl<$Res>;
  $Res call(
      {List<CoinLoreTickersDataEntity> data, CoinLoreTickersInfoEntity info});

  $CoinLoreTickersInfoEntityCopyWith<$Res> get info;
}

/// @nodoc
class _$CoinLoreTickersEntityCopyWithImpl<$Res>
    implements $CoinLoreTickersEntityCopyWith<$Res> {
  _$CoinLoreTickersEntityCopyWithImpl(this._value, this._then);

  final CoinLoreTickersEntity _value;
  // ignore: unused_field
  final $Res Function(CoinLoreTickersEntity) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CoinLoreTickersDataEntity>,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CoinLoreTickersInfoEntity,
    ));
  }

  @override
  $CoinLoreTickersInfoEntityCopyWith<$Res> get info {
    return $CoinLoreTickersInfoEntityCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$CoinLoreTickersEntityCopyWith<$Res>
    implements $CoinLoreTickersEntityCopyWith<$Res> {
  factory _$CoinLoreTickersEntityCopyWith(_CoinLoreTickersEntity value,
          $Res Function(_CoinLoreTickersEntity) then) =
      __$CoinLoreTickersEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CoinLoreTickersDataEntity> data, CoinLoreTickersInfoEntity info});

  @override
  $CoinLoreTickersInfoEntityCopyWith<$Res> get info;
}

/// @nodoc
class __$CoinLoreTickersEntityCopyWithImpl<$Res>
    extends _$CoinLoreTickersEntityCopyWithImpl<$Res>
    implements _$CoinLoreTickersEntityCopyWith<$Res> {
  __$CoinLoreTickersEntityCopyWithImpl(_CoinLoreTickersEntity _value,
      $Res Function(_CoinLoreTickersEntity) _then)
      : super(_value, (v) => _then(v as _CoinLoreTickersEntity));

  @override
  _CoinLoreTickersEntity get _value => super._value as _CoinLoreTickersEntity;

  @override
  $Res call({
    Object? data = freezed,
    Object? info = freezed,
  }) {
    return _then(_CoinLoreTickersEntity(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CoinLoreTickersDataEntity>,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as CoinLoreTickersInfoEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinLoreTickersEntity implements _CoinLoreTickersEntity {
  const _$_CoinLoreTickersEntity({required this.data, required this.info});

  factory _$_CoinLoreTickersEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CoinLoreTickersEntityFromJson(json);

  @override
  final List<CoinLoreTickersDataEntity> data;
  @override
  final CoinLoreTickersInfoEntity info;

  @override
  String toString() {
    return 'CoinLoreTickersEntity(data: $data, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoinLoreTickersEntity &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(info);

  @JsonKey(ignore: true)
  @override
  _$CoinLoreTickersEntityCopyWith<_CoinLoreTickersEntity> get copyWith =>
      __$CoinLoreTickersEntityCopyWithImpl<_CoinLoreTickersEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoinLoreTickersEntityToJson(this);
  }
}

abstract class _CoinLoreTickersEntity implements CoinLoreTickersEntity {
  const factory _CoinLoreTickersEntity(
      {required List<CoinLoreTickersDataEntity> data,
      required CoinLoreTickersInfoEntity info}) = _$_CoinLoreTickersEntity;

  factory _CoinLoreTickersEntity.fromJson(Map<String, dynamic> json) =
      _$_CoinLoreTickersEntity.fromJson;

  @override
  List<CoinLoreTickersDataEntity> get data =>
      throw _privateConstructorUsedError;
  @override
  CoinLoreTickersInfoEntity get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoinLoreTickersEntityCopyWith<_CoinLoreTickersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
