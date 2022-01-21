// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quotation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuotationTearOff {
  const _$QuotationTearOff();

  _Quotation call(
      {UniqueId? id,
      QuotationTitle? title,
      QuotationUnit? measuremntUnit,
      QuotationRate? rate,
      QuotationQuantity? quantity,
      QuotationSelected? isSelected,
      QuotationIndex? index}) {
    return _Quotation(
      id: id,
      title: title,
      measuremntUnit: measuremntUnit,
      rate: rate,
      quantity: quantity,
      isSelected: isSelected,
      index: index,
    );
  }
}

/// @nodoc
const $Quotation = _$QuotationTearOff();

/// @nodoc
mixin _$Quotation {
  UniqueId? get id => throw _privateConstructorUsedError;
  QuotationTitle? get title => throw _privateConstructorUsedError;
  QuotationUnit? get measuremntUnit => throw _privateConstructorUsedError;
  QuotationRate? get rate => throw _privateConstructorUsedError;
  QuotationQuantity? get quantity => throw _privateConstructorUsedError;
  QuotationSelected? get isSelected => throw _privateConstructorUsedError;
  QuotationIndex? get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuotationCopyWith<Quotation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationCopyWith<$Res> {
  factory $QuotationCopyWith(Quotation value, $Res Function(Quotation) then) =
      _$QuotationCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      QuotationTitle? title,
      QuotationUnit? measuremntUnit,
      QuotationRate? rate,
      QuotationQuantity? quantity,
      QuotationSelected? isSelected,
      QuotationIndex? index});
}

/// @nodoc
class _$QuotationCopyWithImpl<$Res> implements $QuotationCopyWith<$Res> {
  _$QuotationCopyWithImpl(this._value, this._then);

  final Quotation _value;
  // ignore: unused_field
  final $Res Function(Quotation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? measuremntUnit = freezed,
    Object? rate = freezed,
    Object? quantity = freezed,
    Object? isSelected = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as QuotationTitle?,
      measuremntUnit: measuremntUnit == freezed
          ? _value.measuremntUnit
          : measuremntUnit // ignore: cast_nullable_to_non_nullable
              as QuotationUnit?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as QuotationRate?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuotationQuantity?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as QuotationSelected?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as QuotationIndex?,
    ));
  }
}

/// @nodoc
abstract class _$QuotationCopyWith<$Res> implements $QuotationCopyWith<$Res> {
  factory _$QuotationCopyWith(
          _Quotation value, $Res Function(_Quotation) then) =
      __$QuotationCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      QuotationTitle? title,
      QuotationUnit? measuremntUnit,
      QuotationRate? rate,
      QuotationQuantity? quantity,
      QuotationSelected? isSelected,
      QuotationIndex? index});
}

/// @nodoc
class __$QuotationCopyWithImpl<$Res> extends _$QuotationCopyWithImpl<$Res>
    implements _$QuotationCopyWith<$Res> {
  __$QuotationCopyWithImpl(_Quotation _value, $Res Function(_Quotation) _then)
      : super(_value, (v) => _then(v as _Quotation));

  @override
  _Quotation get _value => super._value as _Quotation;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? measuremntUnit = freezed,
    Object? rate = freezed,
    Object? quantity = freezed,
    Object? isSelected = freezed,
    Object? index = freezed,
  }) {
    return _then(_Quotation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as QuotationTitle?,
      measuremntUnit: measuremntUnit == freezed
          ? _value.measuremntUnit
          : measuremntUnit // ignore: cast_nullable_to_non_nullable
              as QuotationUnit?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as QuotationRate?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as QuotationQuantity?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as QuotationSelected?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as QuotationIndex?,
    ));
  }
}

/// @nodoc

class _$_Quotation extends _Quotation {
  const _$_Quotation(
      {this.id,
      this.title,
      this.measuremntUnit,
      this.rate,
      this.quantity,
      this.isSelected,
      this.index})
      : super._();

  @override
  final UniqueId? id;
  @override
  final QuotationTitle? title;
  @override
  final QuotationUnit? measuremntUnit;
  @override
  final QuotationRate? rate;
  @override
  final QuotationQuantity? quantity;
  @override
  final QuotationSelected? isSelected;
  @override
  final QuotationIndex? index;

  @override
  String toString() {
    return 'Quotation(id: $id, title: $title, measuremntUnit: $measuremntUnit, rate: $rate, quantity: $quantity, isSelected: $isSelected, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Quotation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.measuremntUnit, measuremntUnit) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(measuremntUnit),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(isSelected),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$QuotationCopyWith<_Quotation> get copyWith =>
      __$QuotationCopyWithImpl<_Quotation>(this, _$identity);

  @override
  operator [](String prop) {
    // TODO: implement []
    switch (prop) {
      case 'title':
        return title!.value.fold((l) => l, (r) => r);
      case 'rate':
        return rate!.value.fold((l) => l, (r) => r);
      case 'quantity':
        return quantity!.value.fold((l) => l, (r) => r);
      case 'measuremntUnit':
        return measuremntUnit!.value.fold((l) => l, (r) => r);
      default:
        throw ArgumentError('Property `$prop` does not exist on QUotation.');
    }
  }
}

abstract class _Quotation extends Quotation {
  const factory _Quotation(
      {UniqueId? id,
      QuotationTitle? title,
      QuotationUnit? measuremntUnit,
      QuotationRate? rate,
      QuotationQuantity? quantity,
      QuotationSelected? isSelected,
      QuotationIndex? index}) = _$_Quotation;
  const _Quotation._() : super._();

  @override
  UniqueId? get id;
  @override
  QuotationTitle? get title;
  @override
  QuotationUnit? get measuremntUnit;
  @override
  QuotationRate? get rate;
  @override
  QuotationQuantity? get quantity;
  @override
  QuotationSelected? get isSelected;
  @override
  QuotationIndex? get index;
  @override
  @JsonKey(ignore: true)
  _$QuotationCopyWith<_Quotation> get copyWith =>
      throw _privateConstructorUsedError;
}
