// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quotation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuotationEventTearOff {
  const _$QuotationEventTearOff();

  _Initialized initialized(Option<Quotation>? initialQuotationOption) {
    return _Initialized(
      initialQuotationOption,
    );
  }

  _TitleChanged titleChanged(String? titleStr) {
    return _TitleChanged(
      titleStr,
    );
  }

  _UnitChanged unitChanged(String? unitStr) {
    return _UnitChanged(
      unitStr,
    );
  }

  _RateChanged rateChanged(num? rateStr) {
    return _RateChanged(
      rateStr,
    );
  }

  _QuantityChanged quantityChanged(num? quantityStr) {
    return _QuantityChanged(
      quantityStr,
    );
  }

  _IsSelectedOrNot isSelectedOrNot(
      Option<Quotation>? selectedQuotationOption, bool? isSelected) {
    return _IsSelectedOrNot(
      selectedQuotationOption,
      isSelected,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $QuotationEvent = _$QuotationEventTearOff();

/// @nodoc
mixin _$QuotationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Quotation>? initialQuotationOption)
        initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? unitStr) unitChanged,
    required TResult Function(num? rateStr) rateChanged,
    required TResult Function(num? quantityStr) quantityChanged,
    required TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)
        isSelectedOrNot,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_IsSelectedOrNot value) isSelectedOrNot,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationEventCopyWith<$Res> {
  factory $QuotationEventCopyWith(
          QuotationEvent value, $Res Function(QuotationEvent) then) =
      _$QuotationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuotationEventCopyWithImpl<$Res>
    implements $QuotationEventCopyWith<$Res> {
  _$QuotationEventCopyWithImpl(this._value, this._then);

  final QuotationEvent _value;
  // ignore: unused_field
  final $Res Function(QuotationEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Quotation>? initialQuotationOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$QuotationEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialQuotationOption = freezed,
  }) {
    return _then(_Initialized(
      initialQuotationOption == freezed
          ? _value.initialQuotationOption
          : initialQuotationOption // ignore: cast_nullable_to_non_nullable
              as Option<Quotation>?,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialQuotationOption);

  @override
  final Option<Quotation>? initialQuotationOption;

  @override
  String toString() {
    return 'QuotationEvent.initialized(initialQuotationOption: $initialQuotationOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialQuotationOption, initialQuotationOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialQuotationOption));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Quotation>? initialQuotationOption)
        initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? unitStr) unitChanged,
    required TResult Function(num? rateStr) rateChanged,
    required TResult Function(num? quantityStr) quantityChanged,
    required TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)
        isSelectedOrNot,
    required TResult Function() saved,
  }) {
    return initialized(initialQuotationOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialQuotationOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialQuotationOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_IsSelectedOrNot value) isSelectedOrNot,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements QuotationEvent {
  const factory _Initialized(Option<Quotation>? initialQuotationOption) =
      _$_Initialized;

  Option<Quotation>? get initialQuotationOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String? titleStr});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$QuotationEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr);

  @override
  final String? titleStr;

  @override
  String toString() {
    return 'QuotationEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TitleChanged &&
            const DeepCollectionEquality().equals(other.titleStr, titleStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(titleStr));

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Quotation>? initialQuotationOption)
        initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? unitStr) unitChanged,
    required TResult Function(num? rateStr) rateChanged,
    required TResult Function(num? quantityStr) quantityChanged,
    required TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)
        isSelectedOrNot,
    required TResult Function() saved,
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
  }) {
    return titleChanged?.call(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_IsSelectedOrNot value) isSelectedOrNot,
    required TResult Function(_Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements QuotationEvent {
  const factory _TitleChanged(String? titleStr) = _$_TitleChanged;

  String? get titleStr;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnitChangedCopyWith<$Res> {
  factory _$UnitChangedCopyWith(
          _UnitChanged value, $Res Function(_UnitChanged) then) =
      __$UnitChangedCopyWithImpl<$Res>;
  $Res call({String? unitStr});
}

/// @nodoc
class __$UnitChangedCopyWithImpl<$Res>
    extends _$QuotationEventCopyWithImpl<$Res>
    implements _$UnitChangedCopyWith<$Res> {
  __$UnitChangedCopyWithImpl(
      _UnitChanged _value, $Res Function(_UnitChanged) _then)
      : super(_value, (v) => _then(v as _UnitChanged));

  @override
  _UnitChanged get _value => super._value as _UnitChanged;

  @override
  $Res call({
    Object? unitStr = freezed,
  }) {
    return _then(_UnitChanged(
      unitStr == freezed
          ? _value.unitStr
          : unitStr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UnitChanged implements _UnitChanged {
  const _$_UnitChanged(this.unitStr);

  @override
  final String? unitStr;

  @override
  String toString() {
    return 'QuotationEvent.unitChanged(unitStr: $unitStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnitChanged &&
            const DeepCollectionEquality().equals(other.unitStr, unitStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(unitStr));

  @JsonKey(ignore: true)
  @override
  _$UnitChangedCopyWith<_UnitChanged> get copyWith =>
      __$UnitChangedCopyWithImpl<_UnitChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Quotation>? initialQuotationOption)
        initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? unitStr) unitChanged,
    required TResult Function(num? rateStr) rateChanged,
    required TResult Function(num? quantityStr) quantityChanged,
    required TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)
        isSelectedOrNot,
    required TResult Function() saved,
  }) {
    return unitChanged(unitStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
  }) {
    return unitChanged?.call(unitStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (unitChanged != null) {
      return unitChanged(unitStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_IsSelectedOrNot value) isSelectedOrNot,
    required TResult Function(_Saved value) saved,
  }) {
    return unitChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
  }) {
    return unitChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (unitChanged != null) {
      return unitChanged(this);
    }
    return orElse();
  }
}

abstract class _UnitChanged implements QuotationEvent {
  const factory _UnitChanged(String? unitStr) = _$_UnitChanged;

  String? get unitStr;
  @JsonKey(ignore: true)
  _$UnitChangedCopyWith<_UnitChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RateChangedCopyWith<$Res> {
  factory _$RateChangedCopyWith(
          _RateChanged value, $Res Function(_RateChanged) then) =
      __$RateChangedCopyWithImpl<$Res>;
  $Res call({num? rateStr});
}

/// @nodoc
class __$RateChangedCopyWithImpl<$Res>
    extends _$QuotationEventCopyWithImpl<$Res>
    implements _$RateChangedCopyWith<$Res> {
  __$RateChangedCopyWithImpl(
      _RateChanged _value, $Res Function(_RateChanged) _then)
      : super(_value, (v) => _then(v as _RateChanged));

  @override
  _RateChanged get _value => super._value as _RateChanged;

  @override
  $Res call({
    Object? rateStr = freezed,
  }) {
    return _then(_RateChanged(
      rateStr == freezed
          ? _value.rateStr
          : rateStr // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$_RateChanged implements _RateChanged {
  const _$_RateChanged(this.rateStr);

  @override
  final num? rateStr;

  @override
  String toString() {
    return 'QuotationEvent.rateChanged(rateStr: $rateStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RateChanged &&
            const DeepCollectionEquality().equals(other.rateStr, rateStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rateStr));

  @JsonKey(ignore: true)
  @override
  _$RateChangedCopyWith<_RateChanged> get copyWith =>
      __$RateChangedCopyWithImpl<_RateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Quotation>? initialQuotationOption)
        initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? unitStr) unitChanged,
    required TResult Function(num? rateStr) rateChanged,
    required TResult Function(num? quantityStr) quantityChanged,
    required TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)
        isSelectedOrNot,
    required TResult Function() saved,
  }) {
    return rateChanged(rateStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
  }) {
    return rateChanged?.call(rateStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (rateChanged != null) {
      return rateChanged(rateStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_IsSelectedOrNot value) isSelectedOrNot,
    required TResult Function(_Saved value) saved,
  }) {
    return rateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
  }) {
    return rateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (rateChanged != null) {
      return rateChanged(this);
    }
    return orElse();
  }
}

abstract class _RateChanged implements QuotationEvent {
  const factory _RateChanged(num? rateStr) = _$_RateChanged;

  num? get rateStr;
  @JsonKey(ignore: true)
  _$RateChangedCopyWith<_RateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuantityChangedCopyWith<$Res> {
  factory _$QuantityChangedCopyWith(
          _QuantityChanged value, $Res Function(_QuantityChanged) then) =
      __$QuantityChangedCopyWithImpl<$Res>;
  $Res call({num? quantityStr});
}

/// @nodoc
class __$QuantityChangedCopyWithImpl<$Res>
    extends _$QuotationEventCopyWithImpl<$Res>
    implements _$QuantityChangedCopyWith<$Res> {
  __$QuantityChangedCopyWithImpl(
      _QuantityChanged _value, $Res Function(_QuantityChanged) _then)
      : super(_value, (v) => _then(v as _QuantityChanged));

  @override
  _QuantityChanged get _value => super._value as _QuantityChanged;

  @override
  $Res call({
    Object? quantityStr = freezed,
  }) {
    return _then(_QuantityChanged(
      quantityStr == freezed
          ? _value.quantityStr
          : quantityStr // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc

class _$_QuantityChanged implements _QuantityChanged {
  const _$_QuantityChanged(this.quantityStr);

  @override
  final num? quantityStr;

  @override
  String toString() {
    return 'QuotationEvent.quantityChanged(quantityStr: $quantityStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuantityChanged &&
            const DeepCollectionEquality()
                .equals(other.quantityStr, quantityStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(quantityStr));

  @JsonKey(ignore: true)
  @override
  _$QuantityChangedCopyWith<_QuantityChanged> get copyWith =>
      __$QuantityChangedCopyWithImpl<_QuantityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Quotation>? initialQuotationOption)
        initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? unitStr) unitChanged,
    required TResult Function(num? rateStr) rateChanged,
    required TResult Function(num? quantityStr) quantityChanged,
    required TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)
        isSelectedOrNot,
    required TResult Function() saved,
  }) {
    return quantityChanged(quantityStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
  }) {
    return quantityChanged?.call(quantityStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(quantityStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_IsSelectedOrNot value) isSelectedOrNot,
    required TResult Function(_Saved value) saved,
  }) {
    return quantityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
  }) {
    return quantityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(this);
    }
    return orElse();
  }
}

abstract class _QuantityChanged implements QuotationEvent {
  const factory _QuantityChanged(num? quantityStr) = _$_QuantityChanged;

  num? get quantityStr;
  @JsonKey(ignore: true)
  _$QuantityChangedCopyWith<_QuantityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsSelectedOrNotCopyWith<$Res> {
  factory _$IsSelectedOrNotCopyWith(
          _IsSelectedOrNot value, $Res Function(_IsSelectedOrNot) then) =
      __$IsSelectedOrNotCopyWithImpl<$Res>;
  $Res call({Option<Quotation>? selectedQuotationOption, bool? isSelected});
}

/// @nodoc
class __$IsSelectedOrNotCopyWithImpl<$Res>
    extends _$QuotationEventCopyWithImpl<$Res>
    implements _$IsSelectedOrNotCopyWith<$Res> {
  __$IsSelectedOrNotCopyWithImpl(
      _IsSelectedOrNot _value, $Res Function(_IsSelectedOrNot) _then)
      : super(_value, (v) => _then(v as _IsSelectedOrNot));

  @override
  _IsSelectedOrNot get _value => super._value as _IsSelectedOrNot;

  @override
  $Res call({
    Object? selectedQuotationOption = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_IsSelectedOrNot(
      selectedQuotationOption == freezed
          ? _value.selectedQuotationOption
          : selectedQuotationOption // ignore: cast_nullable_to_non_nullable
              as Option<Quotation>?,
      isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_IsSelectedOrNot implements _IsSelectedOrNot {
  const _$_IsSelectedOrNot(this.selectedQuotationOption, this.isSelected);

  @override
  final Option<Quotation>? selectedQuotationOption;
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'QuotationEvent.isSelectedOrNot(selectedQuotationOption: $selectedQuotationOption, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsSelectedOrNot &&
            const DeepCollectionEquality().equals(
                other.selectedQuotationOption, selectedQuotationOption) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedQuotationOption),
      const DeepCollectionEquality().hash(isSelected));

  @JsonKey(ignore: true)
  @override
  _$IsSelectedOrNotCopyWith<_IsSelectedOrNot> get copyWith =>
      __$IsSelectedOrNotCopyWithImpl<_IsSelectedOrNot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Quotation>? initialQuotationOption)
        initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? unitStr) unitChanged,
    required TResult Function(num? rateStr) rateChanged,
    required TResult Function(num? quantityStr) quantityChanged,
    required TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)
        isSelectedOrNot,
    required TResult Function() saved,
  }) {
    return isSelectedOrNot(selectedQuotationOption, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
  }) {
    return isSelectedOrNot?.call(selectedQuotationOption, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (isSelectedOrNot != null) {
      return isSelectedOrNot(selectedQuotationOption, isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_IsSelectedOrNot value) isSelectedOrNot,
    required TResult Function(_Saved value) saved,
  }) {
    return isSelectedOrNot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
  }) {
    return isSelectedOrNot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (isSelectedOrNot != null) {
      return isSelectedOrNot(this);
    }
    return orElse();
  }
}

abstract class _IsSelectedOrNot implements QuotationEvent {
  const factory _IsSelectedOrNot(
          Option<Quotation>? selectedQuotationOption, bool? isSelected) =
      _$_IsSelectedOrNot;

  Option<Quotation>? get selectedQuotationOption;
  bool? get isSelected;
  @JsonKey(ignore: true)
  _$IsSelectedOrNotCopyWith<_IsSelectedOrNot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$QuotationEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'QuotationEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Quotation>? initialQuotationOption)
        initialized,
    required TResult Function(String? titleStr) titleChanged,
    required TResult Function(String? unitStr) unitChanged,
    required TResult Function(num? rateStr) rateChanged,
    required TResult Function(num? quantityStr) quantityChanged,
    required TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)
        isSelectedOrNot,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Quotation>? initialQuotationOption)? initialized,
    TResult Function(String? titleStr)? titleChanged,
    TResult Function(String? unitStr)? unitChanged,
    TResult Function(num? rateStr)? rateChanged,
    TResult Function(num? quantityStr)? quantityChanged,
    TResult Function(
            Option<Quotation>? selectedQuotationOption, bool? isSelected)?
        isSelectedOrNot,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_RateChanged value) rateChanged,
    required TResult Function(_QuantityChanged value) quantityChanged,
    required TResult Function(_IsSelectedOrNot value) isSelectedOrNot,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_RateChanged value)? rateChanged,
    TResult Function(_QuantityChanged value)? quantityChanged,
    TResult Function(_IsSelectedOrNot value)? isSelectedOrNot,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements QuotationEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$QuotationStateTearOff {
  const _$QuotationStateTearOff();

  _QuotationState call(
      {Quotation? quotation,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      bool? isSelected,
      Option<Either<QuotationFailure, Quotation>>?
          saveFailureOrSuccessOption}) {
    return _QuotationState(
      quotation: quotation,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      isSelected: isSelected,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $QuotationState = _$QuotationStateTearOff();

/// @nodoc
mixin _$QuotationState {
  Quotation? get quotation => throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  bool? get isEditing => throw _privateConstructorUsedError;
  bool? get isSaving => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;
  Option<Either<QuotationFailure, Quotation>>? get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuotationStateCopyWith<QuotationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationStateCopyWith<$Res> {
  factory $QuotationStateCopyWith(
          QuotationState value, $Res Function(QuotationState) then) =
      _$QuotationStateCopyWithImpl<$Res>;
  $Res call(
      {Quotation? quotation,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      bool? isSelected,
      Option<Either<QuotationFailure, Quotation>>? saveFailureOrSuccessOption});

  $QuotationCopyWith<$Res>? get quotation;
}

/// @nodoc
class _$QuotationStateCopyWithImpl<$Res>
    implements $QuotationStateCopyWith<$Res> {
  _$QuotationStateCopyWithImpl(this._value, this._then);

  final QuotationState _value;
  // ignore: unused_field
  final $Res Function(QuotationState) _then;

  @override
  $Res call({
    Object? quotation = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? isSelected = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      quotation: quotation == freezed
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<QuotationFailure, Quotation>>?,
    ));
  }

  @override
  $QuotationCopyWith<$Res>? get quotation {
    if (_value.quotation == null) {
      return null;
    }

    return $QuotationCopyWith<$Res>(_value.quotation!, (value) {
      return _then(_value.copyWith(quotation: value));
    });
  }
}

/// @nodoc
abstract class _$QuotationStateCopyWith<$Res>
    implements $QuotationStateCopyWith<$Res> {
  factory _$QuotationStateCopyWith(
          _QuotationState value, $Res Function(_QuotationState) then) =
      __$QuotationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Quotation? quotation,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      bool? isSelected,
      Option<Either<QuotationFailure, Quotation>>? saveFailureOrSuccessOption});

  @override
  $QuotationCopyWith<$Res>? get quotation;
}

/// @nodoc
class __$QuotationStateCopyWithImpl<$Res>
    extends _$QuotationStateCopyWithImpl<$Res>
    implements _$QuotationStateCopyWith<$Res> {
  __$QuotationStateCopyWithImpl(
      _QuotationState _value, $Res Function(_QuotationState) _then)
      : super(_value, (v) => _then(v as _QuotationState));

  @override
  _QuotationState get _value => super._value as _QuotationState;

  @override
  $Res call({
    Object? quotation = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? isSelected = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_QuotationState(
      quotation: quotation == freezed
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<QuotationFailure, Quotation>>?,
    ));
  }
}

/// @nodoc

class _$_QuotationState implements _QuotationState {
  const _$_QuotationState(
      {this.quotation,
      this.showErrorMessages,
      this.isEditing,
      this.isSaving,
      this.isSelected,
      this.saveFailureOrSuccessOption});

  @override
  final Quotation? quotation;
  @override
  final bool? showErrorMessages;
  @override
  final bool? isEditing;
  @override
  final bool? isSaving;
  @override
  final bool? isSelected;
  @override
  final Option<Either<QuotationFailure, Quotation>>? saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'QuotationState(quotation: $quotation, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, isSelected: $isSelected, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuotationState &&
            const DeepCollectionEquality().equals(other.quotation, quotation) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(quotation),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(isSelected),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$QuotationStateCopyWith<_QuotationState> get copyWith =>
      __$QuotationStateCopyWithImpl<_QuotationState>(this, _$identity);
}

abstract class _QuotationState implements QuotationState {
  const factory _QuotationState(
      {Quotation? quotation,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      bool? isSelected,
      Option<Either<QuotationFailure, Quotation>>?
          saveFailureOrSuccessOption}) = _$_QuotationState;

  @override
  Quotation? get quotation;
  @override
  bool? get showErrorMessages;
  @override
  bool? get isEditing;
  @override
  bool? get isSaving;
  @override
  bool? get isSelected;
  @override
  Option<Either<QuotationFailure, Quotation>>? get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$QuotationStateCopyWith<_QuotationState> get copyWith =>
      throw _privateConstructorUsedError;
}
