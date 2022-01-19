// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quotation_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuotationDto _$QuotationDtoFromJson(Map<String, dynamic> json) {
  return _QuotationDto.fromJson(json);
}

/// @nodoc
class _$QuotationDtoTearOff {
  const _$QuotationDtoTearOff();

  _QuotationDto call(
      {@JsonKey(ignore: true) String? id1,
      String? title,
      String? measuremntUnit,
      num? rate,
      num? quantity,
      String? userID,
      bool? isSelected,
      num? index,
      @ServerTimestampConverter() FieldValue? createdAt}) {
    return _QuotationDto(
      id1: id1,
      title: title,
      measuremntUnit: measuremntUnit,
      rate: rate,
      quantity: quantity,
      userID: userID,
      isSelected: isSelected,
      index: index,
      createdAt: createdAt,
    );
  }

  QuotationDto fromJson(Map<String, Object?> json) {
    return QuotationDto.fromJson(json);
  }
}

/// @nodoc
const $QuotationDto = _$QuotationDtoTearOff();

/// @nodoc
mixin _$QuotationDto {
  @JsonKey(ignore: true)
  String? get id1 => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get measuremntUnit => throw _privateConstructorUsedError;
  num? get rate => throw _privateConstructorUsedError;
  num? get quantity => throw _privateConstructorUsedError;
  String? get userID => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;
  num? get index => throw _privateConstructorUsedError; // @required int color,
// @required List<TodoItemDto> todos,
  @ServerTimestampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotationDtoCopyWith<QuotationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationDtoCopyWith<$Res> {
  factory $QuotationDtoCopyWith(
          QuotationDto value, $Res Function(QuotationDto) then) =
      _$QuotationDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id1,
      String? title,
      String? measuremntUnit,
      num? rate,
      num? quantity,
      String? userID,
      bool? isSelected,
      num? index,
      @ServerTimestampConverter() FieldValue? createdAt});
}

/// @nodoc
class _$QuotationDtoCopyWithImpl<$Res> implements $QuotationDtoCopyWith<$Res> {
  _$QuotationDtoCopyWithImpl(this._value, this._then);

  final QuotationDto _value;
  // ignore: unused_field
  final $Res Function(QuotationDto) _then;

  @override
  $Res call({
    Object? id1 = freezed,
    Object? title = freezed,
    Object? measuremntUnit = freezed,
    Object? rate = freezed,
    Object? quantity = freezed,
    Object? userID = freezed,
    Object? isSelected = freezed,
    Object? index = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id1: id1 == freezed
          ? _value.id1
          : id1 // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      measuremntUnit: measuremntUnit == freezed
          ? _value.measuremntUnit
          : measuremntUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as num?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
abstract class _$QuotationDtoCopyWith<$Res>
    implements $QuotationDtoCopyWith<$Res> {
  factory _$QuotationDtoCopyWith(
          _QuotationDto value, $Res Function(_QuotationDto) then) =
      __$QuotationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id1,
      String? title,
      String? measuremntUnit,
      num? rate,
      num? quantity,
      String? userID,
      bool? isSelected,
      num? index,
      @ServerTimestampConverter() FieldValue? createdAt});
}

/// @nodoc
class __$QuotationDtoCopyWithImpl<$Res> extends _$QuotationDtoCopyWithImpl<$Res>
    implements _$QuotationDtoCopyWith<$Res> {
  __$QuotationDtoCopyWithImpl(
      _QuotationDto _value, $Res Function(_QuotationDto) _then)
      : super(_value, (v) => _then(v as _QuotationDto));

  @override
  _QuotationDto get _value => super._value as _QuotationDto;

  @override
  $Res call({
    Object? id1 = freezed,
    Object? title = freezed,
    Object? measuremntUnit = freezed,
    Object? rate = freezed,
    Object? quantity = freezed,
    Object? userID = freezed,
    Object? isSelected = freezed,
    Object? index = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_QuotationDto(
      id1: id1 == freezed
          ? _value.id1
          : id1 // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      measuremntUnit: measuremntUnit == freezed
          ? _value.measuremntUnit
          : measuremntUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as num?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuotationDto extends _QuotationDto {
  const _$_QuotationDto(
      {@JsonKey(ignore: true) this.id1,
      this.title,
      this.measuremntUnit,
      this.rate,
      this.quantity,
      this.userID,
      this.isSelected,
      this.index,
      @ServerTimestampConverter() this.createdAt})
      : super._();

  factory _$_QuotationDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuotationDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id1;
  @override
  final String? title;
  @override
  final String? measuremntUnit;
  @override
  final num? rate;
  @override
  final num? quantity;
  @override
  final String? userID;
  @override
  final bool? isSelected;
  @override
  final num? index;
  @override // @required int color,
// @required List<TodoItemDto> todos,
  @ServerTimestampConverter()
  final FieldValue? createdAt;

  @override
  String toString() {
    return 'QuotationDto(id1: $id1, title: $title, measuremntUnit: $measuremntUnit, rate: $rate, quantity: $quantity, userID: $userID, isSelected: $isSelected, index: $index, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuotationDto &&
            const DeepCollectionEquality().equals(other.id1, id1) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.measuremntUnit, measuremntUnit) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.userID, userID) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id1),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(measuremntUnit),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(userID),
      const DeepCollectionEquality().hash(isSelected),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$QuotationDtoCopyWith<_QuotationDto> get copyWith =>
      __$QuotationDtoCopyWithImpl<_QuotationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuotationDtoToJson(this);
  }
}

abstract class _QuotationDto extends QuotationDto {
  const factory _QuotationDto(
      {@JsonKey(ignore: true) String? id1,
      String? title,
      String? measuremntUnit,
      num? rate,
      num? quantity,
      String? userID,
      bool? isSelected,
      num? index,
      @ServerTimestampConverter() FieldValue? createdAt}) = _$_QuotationDto;
  const _QuotationDto._() : super._();

  factory _QuotationDto.fromJson(Map<String, dynamic> json) =
      _$_QuotationDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id1;
  @override
  String? get title;
  @override
  String? get measuremntUnit;
  @override
  num? get rate;
  @override
  num? get quantity;
  @override
  String? get userID;
  @override
  bool? get isSelected;
  @override
  num? get index;
  @override // @required int color,
// @required List<TodoItemDto> todos,
  @ServerTimestampConverter()
  FieldValue? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$QuotationDtoCopyWith<_QuotationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
