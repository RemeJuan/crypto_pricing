// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tickers_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TickersInfoEntity _$TickersInfoEntityFromJson(Map<String, dynamic> json) {
  return _TickersInfoEntity.fromJson(json);
}

/// @nodoc
class _$TickersInfoEntityTearOff {
  const _$TickersInfoEntityTearOff();

  _TickersInfoEntity call(
      {@JsonKey(name: 'coins_num') required int coinsNum, required int time}) {
    return _TickersInfoEntity(
      coinsNum: coinsNum,
      time: time,
    );
  }

  TickersInfoEntity fromJson(Map<String, Object> json) {
    return TickersInfoEntity.fromJson(json);
  }
}

/// @nodoc
const $TickersInfoEntity = _$TickersInfoEntityTearOff();

/// @nodoc
mixin _$TickersInfoEntity {
  @JsonKey(name: 'coins_num')
  int get coinsNum => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TickersInfoEntityCopyWith<TickersInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickersInfoEntityCopyWith<$Res> {
  factory $TickersInfoEntityCopyWith(
          TickersInfoEntity value, $Res Function(TickersInfoEntity) then) =
      _$TickersInfoEntityCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'coins_num') int coinsNum, int time});
}

/// @nodoc
class _$TickersInfoEntityCopyWithImpl<$Res>
    implements $TickersInfoEntityCopyWith<$Res> {
  _$TickersInfoEntityCopyWithImpl(this._value, this._then);

  final TickersInfoEntity _value;
  // ignore: unused_field
  final $Res Function(TickersInfoEntity) _then;

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
abstract class _$TickersInfoEntityCopyWith<$Res>
    implements $TickersInfoEntityCopyWith<$Res> {
  factory _$TickersInfoEntityCopyWith(
          _TickersInfoEntity value, $Res Function(_TickersInfoEntity) then) =
      __$TickersInfoEntityCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'coins_num') int coinsNum, int time});
}

/// @nodoc
class __$TickersInfoEntityCopyWithImpl<$Res>
    extends _$TickersInfoEntityCopyWithImpl<$Res>
    implements _$TickersInfoEntityCopyWith<$Res> {
  __$TickersInfoEntityCopyWithImpl(
      _TickersInfoEntity _value, $Res Function(_TickersInfoEntity) _then)
      : super(_value, (v) => _then(v as _TickersInfoEntity));

  @override
  _TickersInfoEntity get _value => super._value as _TickersInfoEntity;

  @override
  $Res call({
    Object? coinsNum = freezed,
    Object? time = freezed,
  }) {
    return _then(_TickersInfoEntity(
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
class _$_TickersInfoEntity implements _TickersInfoEntity {
  const _$_TickersInfoEntity(
      {@JsonKey(name: 'coins_num') required this.coinsNum, required this.time});

  factory _$_TickersInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_TickersInfoEntityFromJson(json);

  @override
  @JsonKey(name: 'coins_num')
  final int coinsNum;
  @override
  final int time;

  @override
  String toString() {
    return 'TickersInfoEntity(coinsNum: $coinsNum, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TickersInfoEntity &&
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
  _$TickersInfoEntityCopyWith<_TickersInfoEntity> get copyWith =>
      __$TickersInfoEntityCopyWithImpl<_TickersInfoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TickersInfoEntityToJson(this);
  }
}

abstract class _TickersInfoEntity implements TickersInfoEntity {
  const factory _TickersInfoEntity(
      {@JsonKey(name: 'coins_num') required int coinsNum,
      required int time}) = _$_TickersInfoEntity;

  factory _TickersInfoEntity.fromJson(Map<String, dynamic> json) =
      _$_TickersInfoEntity.fromJson;

  @override
  @JsonKey(name: 'coins_num')
  int get coinsNum => throw _privateConstructorUsedError;
  @override
  int get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TickersInfoEntityCopyWith<_TickersInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
