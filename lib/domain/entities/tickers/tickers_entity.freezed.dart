// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tickers_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TickersEntity _$TickersEntityFromJson(Map<String, dynamic> json) {
  return _TickersEntity.fromJson(json);
}

/// @nodoc
class _$TickersEntityTearOff {
  const _$TickersEntityTearOff();

  _TickersEntity call(
      {required List<TickersDataEntity> data,
      required TickersInfoEntity info}) {
    return _TickersEntity(
      data: data,
      info: info,
    );
  }

  TickersEntity fromJson(Map<String, Object> json) {
    return TickersEntity.fromJson(json);
  }
}

/// @nodoc
const $TickersEntity = _$TickersEntityTearOff();

/// @nodoc
mixin _$TickersEntity {
  List<TickersDataEntity> get data => throw _privateConstructorUsedError;
  TickersInfoEntity get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TickersEntityCopyWith<TickersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickersEntityCopyWith<$Res> {
  factory $TickersEntityCopyWith(
          TickersEntity value, $Res Function(TickersEntity) then) =
      _$TickersEntityCopyWithImpl<$Res>;
  $Res call({List<TickersDataEntity> data, TickersInfoEntity info});

  $TickersInfoEntityCopyWith<$Res> get info;
}

/// @nodoc
class _$TickersEntityCopyWithImpl<$Res>
    implements $TickersEntityCopyWith<$Res> {
  _$TickersEntityCopyWithImpl(this._value, this._then);

  final TickersEntity _value;
  // ignore: unused_field
  final $Res Function(TickersEntity) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TickersDataEntity>,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TickersInfoEntity,
    ));
  }

  @override
  $TickersInfoEntityCopyWith<$Res> get info {
    return $TickersInfoEntityCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$TickersEntityCopyWith<$Res>
    implements $TickersEntityCopyWith<$Res> {
  factory _$TickersEntityCopyWith(
          _TickersEntity value, $Res Function(_TickersEntity) then) =
      __$TickersEntityCopyWithImpl<$Res>;
  @override
  $Res call({List<TickersDataEntity> data, TickersInfoEntity info});

  @override
  $TickersInfoEntityCopyWith<$Res> get info;
}

/// @nodoc
class __$TickersEntityCopyWithImpl<$Res>
    extends _$TickersEntityCopyWithImpl<$Res>
    implements _$TickersEntityCopyWith<$Res> {
  __$TickersEntityCopyWithImpl(
      _TickersEntity _value, $Res Function(_TickersEntity) _then)
      : super(_value, (v) => _then(v as _TickersEntity));

  @override
  _TickersEntity get _value => super._value as _TickersEntity;

  @override
  $Res call({
    Object? data = freezed,
    Object? info = freezed,
  }) {
    return _then(_TickersEntity(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TickersDataEntity>,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as TickersInfoEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TickersEntity implements _TickersEntity {
  const _$_TickersEntity({required this.data, required this.info});

  factory _$_TickersEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_TickersEntityFromJson(json);

  @override
  final List<TickersDataEntity> data;
  @override
  final TickersInfoEntity info;

  @override
  String toString() {
    return 'TickersEntity(data: $data, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TickersEntity &&
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
  _$TickersEntityCopyWith<_TickersEntity> get copyWith =>
      __$TickersEntityCopyWithImpl<_TickersEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TickersEntityToJson(this);
  }
}

abstract class _TickersEntity implements TickersEntity {
  const factory _TickersEntity(
      {required List<TickersDataEntity> data,
      required TickersInfoEntity info}) = _$_TickersEntity;

  factory _TickersEntity.fromJson(Map<String, dynamic> json) =
      _$_TickersEntity.fromJson;

  @override
  List<TickersDataEntity> get data => throw _privateConstructorUsedError;
  @override
  TickersInfoEntity get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TickersEntityCopyWith<_TickersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
