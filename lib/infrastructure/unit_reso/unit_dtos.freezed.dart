// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unit_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitDto _$UnitDtoFromJson(Map<String, dynamic> json) {
  return _UnitDto.fromJson(json);
}

/// @nodoc
class _$UnitDtoTearOff {
  const _$UnitDtoTearOff();

  _UnitDto call(
      {@JsonKey(ignore: true) String? id1,
      String? unitHere,
      @ServerTimestampConverter() FieldValue? createdAt}) {
    return _UnitDto(
      id1: id1,
      unitHere: unitHere,
      createdAt: createdAt,
    );
  }

  UnitDto fromJson(Map<String, Object?> json) {
    return UnitDto.fromJson(json);
  }
}

/// @nodoc
const $UnitDto = _$UnitDtoTearOff();

/// @nodoc
mixin _$UnitDto {
  @JsonKey(ignore: true)
  String? get id1 => throw _privateConstructorUsedError;
  String? get unitHere =>
      throw _privateConstructorUsedError; // @required int color,
// @required List<TodoItemDto> todos,
  @ServerTimestampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitDtoCopyWith<UnitDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitDtoCopyWith<$Res> {
  factory $UnitDtoCopyWith(UnitDto value, $Res Function(UnitDto) then) =
      _$UnitDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id1,
      String? unitHere,
      @ServerTimestampConverter() FieldValue? createdAt});
}

/// @nodoc
class _$UnitDtoCopyWithImpl<$Res> implements $UnitDtoCopyWith<$Res> {
  _$UnitDtoCopyWithImpl(this._value, this._then);

  final UnitDto _value;
  // ignore: unused_field
  final $Res Function(UnitDto) _then;

  @override
  $Res call({
    Object? id1 = freezed,
    Object? unitHere = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id1: id1 == freezed
          ? _value.id1
          : id1 // ignore: cast_nullable_to_non_nullable
              as String?,
      unitHere: unitHere == freezed
          ? _value.unitHere
          : unitHere // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
abstract class _$UnitDtoCopyWith<$Res> implements $UnitDtoCopyWith<$Res> {
  factory _$UnitDtoCopyWith(_UnitDto value, $Res Function(_UnitDto) then) =
      __$UnitDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id1,
      String? unitHere,
      @ServerTimestampConverter() FieldValue? createdAt});
}

/// @nodoc
class __$UnitDtoCopyWithImpl<$Res> extends _$UnitDtoCopyWithImpl<$Res>
    implements _$UnitDtoCopyWith<$Res> {
  __$UnitDtoCopyWithImpl(_UnitDto _value, $Res Function(_UnitDto) _then)
      : super(_value, (v) => _then(v as _UnitDto));

  @override
  _UnitDto get _value => super._value as _UnitDto;

  @override
  $Res call({
    Object? id1 = freezed,
    Object? unitHere = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_UnitDto(
      id1: id1 == freezed
          ? _value.id1
          : id1 // ignore: cast_nullable_to_non_nullable
              as String?,
      unitHere: unitHere == freezed
          ? _value.unitHere
          : unitHere // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnitDto extends _UnitDto {
  const _$_UnitDto(
      {@JsonKey(ignore: true) this.id1,
      this.unitHere,
      @ServerTimestampConverter() this.createdAt})
      : super._();

  factory _$_UnitDto.fromJson(Map<String, dynamic> json) =>
      _$$_UnitDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id1;
  @override
  final String? unitHere;
  @override // @required int color,
// @required List<TodoItemDto> todos,
  @ServerTimestampConverter()
  final FieldValue? createdAt;

  @override
  String toString() {
    return 'UnitDto(id1: $id1, unitHere: $unitHere, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnitDto &&
            const DeepCollectionEquality().equals(other.id1, id1) &&
            const DeepCollectionEquality().equals(other.unitHere, unitHere) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id1),
      const DeepCollectionEquality().hash(unitHere),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$UnitDtoCopyWith<_UnitDto> get copyWith =>
      __$UnitDtoCopyWithImpl<_UnitDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitDtoToJson(this);
  }
}

abstract class _UnitDto extends UnitDto {
  const factory _UnitDto(
      {@JsonKey(ignore: true) String? id1,
      String? unitHere,
      @ServerTimestampConverter() FieldValue? createdAt}) = _$_UnitDto;
  const _UnitDto._() : super._();

  factory _UnitDto.fromJson(Map<String, dynamic> json) = _$_UnitDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id1;
  @override
  String? get unitHere;
  @override // @required int color,
// @required List<TodoItemDto> todos,
  @ServerTimestampConverter()
  FieldValue? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$UnitDtoCopyWith<_UnitDto> get copyWith =>
      throw _privateConstructorUsedError;
}
