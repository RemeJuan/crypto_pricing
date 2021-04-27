// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coin_lore_tickers_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinLoreTickersInfoEntity _$CoinLoreTickersInfoEntityFromJson(
    Map<String, dynamic> json) {
  return _CoinLoreTickersInfoEntity.fromJson(json);
}

/// @nodoc
class _$CoinLoreTickersInfoEntityTearOff {
  const _$CoinLoreTickersInfoEntityTearOff();

  _CoinLoreTickersInfoEntity call(
      {@JsonKey(name: 'coins_num') required int coinsNum, required int time}) {
    return _CoinLoreTickersInfoEntity(
      coinsNum: coinsNum,
      time: time,
    );
  }

  CoinLoreTickersInfoEntity fromJson(Map<String, Object> json) {
    return CoinLoreTickersInfoEntity.fromJson(json);
  }
}

/// @nodoc
const $CoinLoreTickersInfoEntity = _$CoinLoreTickersInfoEntityTearOff();

/// @nodoc
mixin _$CoinLoreTickersInfoEntity {
  @JsonKey(name: 'coins_num')
  int get coinsNum => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinLoreTickersInfoEntityCopyWith<CoinLoreTickersInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinLoreTickersInfoEntityCopyWith<$Res> {
  factory $CoinLoreTickersInfoEntityCopyWith(CoinLoreTickersInfoEntity value,
          $Res Function(CoinLoreTickersInfoEntity) then) =
      _$CoinLoreTickersInfoEntityCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'coins_num') int coinsNum, int time});
}

/// @nodoc
class _$CoinLoreTickersInfoEntityCopyWithImpl<$Res>
    implements $CoinLoreTickersInfoEntityCopyWith<$Res> {
  _$CoinLoreTickersInfoEntityCopyWithImpl(this._value, this._then);

  final CoinLoreTickersInfoEntity _value;
  // ignore: unused_field
  final $Res Function(CoinLoreTickersInfoEntity) _then;

  @override
  $Res call({
    Object? coinsNum = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      coinsNum: coinsNum == freezed
          ? _value.coinsNum
          : coinsNum // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CoinLoreTickersInfoEntityCopyWith<$Res>
    implements $CoinLoreTickersInfoEntityCopyWith<$Res> {
  factory _$CoinLoreTickersInfoEntityCopyWith(_CoinLoreTickersInfoEntity value,
          $Res Function(_CoinLoreTickersInfoEntity) then) =
      __$CoinLoreTickersInfoEntityCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'coins_num') int coinsNum, int time});
}

/// @nodoc
class __$CoinLoreTickersInfoEntityCopyWithImpl<$Res>
    extends _$CoinLoreTickersInfoEntityCopyWithImpl<$Res>
    implements _$CoinLoreTickersInfoEntityCopyWith<$Res> {
  __$CoinLoreTickersInfoEntityCopyWithImpl(_CoinLoreTickersInfoEntity _value,
      $Res Function(_CoinLoreTickersInfoEntity) _then)
      : super(_value, (v) => _then(v as _CoinLoreTickersInfoEntity));

  @override
  _CoinLoreTickersInfoEntity get _value =>
      super._value as _CoinLoreTickersInfoEntity;

  @override
  $Res call({
    Object? coinsNum = freezed,
    Object? time = freezed,
  }) {
    return _then(_CoinLoreTickersInfoEntity(
      coinsNum: coinsNum == freezed
          ? _value.coinsNum
          : coinsNum // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinLoreTickersInfoEntity implements _CoinLoreTickersInfoEntity {
  const _$_CoinLoreTickersInfoEntity(
      {@JsonKey(name: 'coins_num') required this.coinsNum, required this.time});

  factory _$_CoinLoreTickersInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CoinLoreTickersInfoEntityFromJson(json);

  @override
  @JsonKey(name: 'coins_num')
  final int coinsNum;
  @override
  final int time;

  @override
  String toString() {
    return 'CoinLoreTickersInfoEntity(coinsNum: $coinsNum, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoinLoreTickersInfoEntity &&
            (identical(other.coinsNum, coinsNum) ||
                const DeepCollectionEquality()
                    .equals(other.coinsNum, coinsNum)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coinsNum) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$CoinLoreTickersInfoEntityCopyWith<_CoinLoreTickersInfoEntity>
      get copyWith =>
          __$CoinLoreTickersInfoEntityCopyWithImpl<_CoinLoreTickersInfoEntity>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoinLoreTickersInfoEntityToJson(this);
  }
}

abstract class _CoinLoreTickersInfoEntity implements CoinLoreTickersInfoEntity {
  const factory _CoinLoreTickersInfoEntity(
      {@JsonKey(name: 'coins_num') required int coinsNum,
      required int time}) = _$_CoinLoreTickersInfoEntity;

  factory _CoinLoreTickersInfoEntity.fromJson(Map<String, dynamic> json) =
      _$_CoinLoreTickersInfoEntity.fromJson;

  @override
  @JsonKey(name: 'coins_num')
  int get coinsNum => throw _privateConstructorUsedError;
  @override
  int get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoinLoreTickersInfoEntityCopyWith<_CoinLoreTickersInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}
