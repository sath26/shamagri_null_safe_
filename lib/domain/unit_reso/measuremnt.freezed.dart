// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'measuremnt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MeasuremntTearOff {
  const _$MeasuremntTearOff();

  _Measuremnt call({UniqueId? id, UnitBody? title, bool? isEditing}) {
    return _Measuremnt(
      id: id,
      title: title,
      isEditing: isEditing,
    );
  }
}

/// @nodoc
const $Measuremnt = _$MeasuremntTearOff();

/// @nodoc
mixin _$Measuremnt {
  UniqueId? get id => throw _privateConstructorUsedError;
  UnitBody? get title => throw _privateConstructorUsedError;
  bool? get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeasuremntCopyWith<Measuremnt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasuremntCopyWith<$Res> {
  factory $MeasuremntCopyWith(
          Measuremnt value, $Res Function(Measuremnt) then) =
      _$MeasuremntCopyWithImpl<$Res>;
  $Res call({UniqueId? id, UnitBody? title, bool? isEditing});
}

/// @nodoc
class _$MeasuremntCopyWithImpl<$Res> implements $MeasuremntCopyWith<$Res> {
  _$MeasuremntCopyWithImpl(this._value, this._then);

  final Measuremnt _value;
  // ignore: unused_field
  final $Res Function(Measuremnt) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as UnitBody?,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$MeasuremntCopyWith<$Res> implements $MeasuremntCopyWith<$Res> {
  factory _$MeasuremntCopyWith(
          _Measuremnt value, $Res Function(_Measuremnt) then) =
      __$MeasuremntCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId? id, UnitBody? title, bool? isEditing});
}

/// @nodoc
class __$MeasuremntCopyWithImpl<$Res> extends _$MeasuremntCopyWithImpl<$Res>
    implements _$MeasuremntCopyWith<$Res> {
  __$MeasuremntCopyWithImpl(
      _Measuremnt _value, $Res Function(_Measuremnt) _then)
      : super(_value, (v) => _then(v as _Measuremnt));

  @override
  _Measuremnt get _value => super._value as _Measuremnt;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_Measuremnt(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as UnitBody?,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Measuremnt extends _Measuremnt {
  const _$_Measuremnt({this.id, this.title, this.isEditing}) : super._();

  @override
  final UniqueId? id;
  @override
  final UnitBody? title;
  @override
  final bool? isEditing;

  @override
  String toString() {
    return 'Measuremnt(id: $id, title: $title, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Measuremnt &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(isEditing));

  @JsonKey(ignore: true)
  @override
  _$MeasuremntCopyWith<_Measuremnt> get copyWith =>
      __$MeasuremntCopyWithImpl<_Measuremnt>(this, _$identity);
}

abstract class _Measuremnt extends Measuremnt {
  const factory _Measuremnt({UniqueId? id, UnitBody? title, bool? isEditing}) =
      _$_Measuremnt;
  const _Measuremnt._() : super._();

  @override
  UniqueId? get id;
  @override
  UnitBody? get title;
  @override
  bool? get isEditing;
  @override
  @JsonKey(ignore: true)
  _$MeasuremntCopyWith<_Measuremnt> get copyWith =>
      throw _privateConstructorUsedError;
}
