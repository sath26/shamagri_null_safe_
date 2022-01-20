// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UnitEventTearOff {
  const _$UnitEventTearOff();

  _Initialized initialized(Option<Measuremnt>? initialUnitOption) {
    return _Initialized(
      initialUnitOption,
    );
  }

  _UnitChanged unitChanged(String? bodyStr) {
    return _UnitChanged(
      bodyStr,
    );
  }

  _Saved saved() {
    return const _Saved();
  }

  _ShowsInputForEdit showsInputForEdit(
      Option<Measuremnt> item, bool isEditing) {
    return _ShowsInputForEdit(
      item,
      isEditing,
    );
  }
}

/// @nodoc
const $UnitEvent = _$UnitEventTearOff();

/// @nodoc
mixin _$UnitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Measuremnt>? initialUnitOption)
        initialized,
    required TResult Function(String? bodyStr) unitChanged,
    required TResult Function() saved,
    required TResult Function(Option<Measuremnt> item, bool isEditing)
        showsInputForEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Measuremnt>? initialUnitOption)? initialized,
    TResult Function(String? bodyStr)? unitChanged,
    TResult Function()? saved,
    TResult Function(Option<Measuremnt> item, bool isEditing)?
        showsInputForEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Measuremnt>? initialUnitOption)? initialized,
    TResult Function(String? bodyStr)? unitChanged,
    TResult Function()? saved,
    TResult Function(Option<Measuremnt> item, bool isEditing)?
        showsInputForEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ShowsInputForEdit value) showsInputForEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ShowsInputForEdit value)? showsInputForEdit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ShowsInputForEdit value)? showsInputForEdit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitEventCopyWith<$Res> {
  factory $UnitEventCopyWith(UnitEvent value, $Res Function(UnitEvent) then) =
      _$UnitEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnitEventCopyWithImpl<$Res> implements $UnitEventCopyWith<$Res> {
  _$UnitEventCopyWithImpl(this._value, this._then);

  final UnitEvent _value;
  // ignore: unused_field
  final $Res Function(UnitEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Measuremnt>? initialUnitOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$UnitEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialUnitOption = freezed,
  }) {
    return _then(_Initialized(
      initialUnitOption == freezed
          ? _value.initialUnitOption
          : initialUnitOption // ignore: cast_nullable_to_non_nullable
              as Option<Measuremnt>?,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialUnitOption);

  @override
  final Option<Measuremnt>? initialUnitOption;

  @override
  String toString() {
    return 'UnitEvent.initialized(initialUnitOption: $initialUnitOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality()
                .equals(other.initialUnitOption, initialUnitOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialUnitOption));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Measuremnt>? initialUnitOption)
        initialized,
    required TResult Function(String? bodyStr) unitChanged,
    required TResult Function() saved,
    required TResult Function(Option<Measuremnt> item, bool isEditing)
        showsInputForEdit,
  }) {
    return initialized(initialUnitOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Measuremnt>? initialUnitOption)? initialized,
    TResult Function(String? bodyStr)? unitChanged,
    TResult Function()? saved,
    TResult Function(Option<Measuremnt> item, bool isEditing)?
        showsInputForEdit,
  }) {
    return initialized?.call(initialUnitOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Measuremnt>? initialUnitOption)? initialized,
    TResult Function(String? bodyStr)? unitChanged,
    TResult Function()? saved,
    TResult Function(Option<Measuremnt> item, bool isEditing)?
        showsInputForEdit,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialUnitOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ShowsInputForEdit value) showsInputForEdit,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ShowsInputForEdit value)? showsInputForEdit,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ShowsInputForEdit value)? showsInputForEdit,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements UnitEvent {
  const factory _Initialized(Option<Measuremnt>? initialUnitOption) =
      _$_Initialized;

  Option<Measuremnt>? get initialUnitOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnitChangedCopyWith<$Res> {
  factory _$UnitChangedCopyWith(
          _UnitChanged value, $Res Function(_UnitChanged) then) =
      __$UnitChangedCopyWithImpl<$Res>;
  $Res call({String? bodyStr});
}

/// @nodoc
class __$UnitChangedCopyWithImpl<$Res> extends _$UnitEventCopyWithImpl<$Res>
    implements _$UnitChangedCopyWith<$Res> {
  __$UnitChangedCopyWithImpl(
      _UnitChanged _value, $Res Function(_UnitChanged) _then)
      : super(_value, (v) => _then(v as _UnitChanged));

  @override
  _UnitChanged get _value => super._value as _UnitChanged;

  @override
  $Res call({
    Object? bodyStr = freezed,
  }) {
    return _then(_UnitChanged(
      bodyStr == freezed
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UnitChanged implements _UnitChanged {
  const _$_UnitChanged(this.bodyStr);

  @override
  final String? bodyStr;

  @override
  String toString() {
    return 'UnitEvent.unitChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnitChanged &&
            const DeepCollectionEquality().equals(other.bodyStr, bodyStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(bodyStr));

  @JsonKey(ignore: true)
  @override
  _$UnitChangedCopyWith<_UnitChanged> get copyWith =>
      __$UnitChangedCopyWithImpl<_UnitChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Measuremnt>? initialUnitOption)
        initialized,
    required TResult Function(String? bodyStr) unitChanged,
    required TResult Function() saved,
    required TResult Function(Option<Measuremnt> item, bool isEditing)
        showsInputForEdit,
  }) {
    return unitChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Measuremnt>? initialUnitOption)? initialized,
    TResult Function(String? bodyStr)? unitChanged,
    TResult Function()? saved,
    TResult Function(Option<Measuremnt> item, bool isEditing)?
        showsInputForEdit,
  }) {
    return unitChanged?.call(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Measuremnt>? initialUnitOption)? initialized,
    TResult Function(String? bodyStr)? unitChanged,
    TResult Function()? saved,
    TResult Function(Option<Measuremnt> item, bool isEditing)?
        showsInputForEdit,
    required TResult orElse(),
  }) {
    if (unitChanged != null) {
      return unitChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ShowsInputForEdit value) showsInputForEdit,
  }) {
    return unitChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ShowsInputForEdit value)? showsInputForEdit,
  }) {
    return unitChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ShowsInputForEdit value)? showsInputForEdit,
    required TResult orElse(),
  }) {
    if (unitChanged != null) {
      return unitChanged(this);
    }
    return orElse();
  }
}

abstract class _UnitChanged implements UnitEvent {
  const factory _UnitChanged(String? bodyStr) = _$_UnitChanged;

  String? get bodyStr;
  @JsonKey(ignore: true)
  _$UnitChangedCopyWith<_UnitChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$UnitEventCopyWithImpl<$Res>
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
    return 'UnitEvent.saved()';
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
    required TResult Function(Option<Measuremnt>? initialUnitOption)
        initialized,
    required TResult Function(String? bodyStr) unitChanged,
    required TResult Function() saved,
    required TResult Function(Option<Measuremnt> item, bool isEditing)
        showsInputForEdit,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Measuremnt>? initialUnitOption)? initialized,
    TResult Function(String? bodyStr)? unitChanged,
    TResult Function()? saved,
    TResult Function(Option<Measuremnt> item, bool isEditing)?
        showsInputForEdit,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Measuremnt>? initialUnitOption)? initialized,
    TResult Function(String? bodyStr)? unitChanged,
    TResult Function()? saved,
    TResult Function(Option<Measuremnt> item, bool isEditing)?
        showsInputForEdit,
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
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ShowsInputForEdit value) showsInputForEdit,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ShowsInputForEdit value)? showsInputForEdit,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ShowsInputForEdit value)? showsInputForEdit,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements UnitEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$ShowsInputForEditCopyWith<$Res> {
  factory _$ShowsInputForEditCopyWith(
          _ShowsInputForEdit value, $Res Function(_ShowsInputForEdit) then) =
      __$ShowsInputForEditCopyWithImpl<$Res>;
  $Res call({Option<Measuremnt> item, bool isEditing});
}

/// @nodoc
class __$ShowsInputForEditCopyWithImpl<$Res>
    extends _$UnitEventCopyWithImpl<$Res>
    implements _$ShowsInputForEditCopyWith<$Res> {
  __$ShowsInputForEditCopyWithImpl(
      _ShowsInputForEdit _value, $Res Function(_ShowsInputForEdit) _then)
      : super(_value, (v) => _then(v as _ShowsInputForEdit));

  @override
  _ShowsInputForEdit get _value => super._value as _ShowsInputForEdit;

  @override
  $Res call({
    Object? item = freezed,
    Object? isEditing = freezed,
  }) {
    return _then(_ShowsInputForEdit(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Option<Measuremnt>,
      isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ShowsInputForEdit implements _ShowsInputForEdit {
  const _$_ShowsInputForEdit(this.item, this.isEditing);

  @override
  final Option<Measuremnt> item;
  @override
  final bool isEditing;

  @override
  String toString() {
    return 'UnitEvent.showsInputForEdit(item: $item, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowsInputForEdit &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(isEditing));

  @JsonKey(ignore: true)
  @override
  _$ShowsInputForEditCopyWith<_ShowsInputForEdit> get copyWith =>
      __$ShowsInputForEditCopyWithImpl<_ShowsInputForEdit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Measuremnt>? initialUnitOption)
        initialized,
    required TResult Function(String? bodyStr) unitChanged,
    required TResult Function() saved,
    required TResult Function(Option<Measuremnt> item, bool isEditing)
        showsInputForEdit,
  }) {
    return showsInputForEdit(item, isEditing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Measuremnt>? initialUnitOption)? initialized,
    TResult Function(String? bodyStr)? unitChanged,
    TResult Function()? saved,
    TResult Function(Option<Measuremnt> item, bool isEditing)?
        showsInputForEdit,
  }) {
    return showsInputForEdit?.call(item, isEditing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Measuremnt>? initialUnitOption)? initialized,
    TResult Function(String? bodyStr)? unitChanged,
    TResult Function()? saved,
    TResult Function(Option<Measuremnt> item, bool isEditing)?
        showsInputForEdit,
    required TResult orElse(),
  }) {
    if (showsInputForEdit != null) {
      return showsInputForEdit(item, isEditing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_Saved value) saved,
    required TResult Function(_ShowsInputForEdit value) showsInputForEdit,
  }) {
    return showsInputForEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ShowsInputForEdit value)? showsInputForEdit,
  }) {
    return showsInputForEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_Saved value)? saved,
    TResult Function(_ShowsInputForEdit value)? showsInputForEdit,
    required TResult orElse(),
  }) {
    if (showsInputForEdit != null) {
      return showsInputForEdit(this);
    }
    return orElse();
  }
}

abstract class _ShowsInputForEdit implements UnitEvent {
  const factory _ShowsInputForEdit(Option<Measuremnt> item, bool isEditing) =
      _$_ShowsInputForEdit;

  Option<Measuremnt> get item;
  bool get isEditing;
  @JsonKey(ignore: true)
  _$ShowsInputForEditCopyWith<_ShowsInputForEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UnitStateTearOff {
  const _$UnitStateTearOff();

  _UnitState call(
      {Measuremnt? unit,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      Option<Either<UnitFailure, Measuremnt>>? saveFailureOrSuccessOption}) {
    return _UnitState(
      unit: unit,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $UnitState = _$UnitStateTearOff();

/// @nodoc
mixin _$UnitState {
  Measuremnt? get unit => throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  bool? get isEditing => throw _privateConstructorUsedError;
  bool? get isSaving => throw _privateConstructorUsedError;
  Option<Either<UnitFailure, Measuremnt>>? get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnitStateCopyWith<UnitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitStateCopyWith<$Res> {
  factory $UnitStateCopyWith(UnitState value, $Res Function(UnitState) then) =
      _$UnitStateCopyWithImpl<$Res>;
  $Res call(
      {Measuremnt? unit,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      Option<Either<UnitFailure, Measuremnt>>? saveFailureOrSuccessOption});

  $MeasuremntCopyWith<$Res>? get unit;
}

/// @nodoc
class _$UnitStateCopyWithImpl<$Res> implements $UnitStateCopyWith<$Res> {
  _$UnitStateCopyWithImpl(this._value, this._then);

  final UnitState _value;
  // ignore: unused_field
  final $Res Function(UnitState) _then;

  @override
  $Res call({
    Object? unit = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Measuremnt?,
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
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UnitFailure, Measuremnt>>?,
    ));
  }

  @override
  $MeasuremntCopyWith<$Res>? get unit {
    if (_value.unit == null) {
      return null;
    }

    return $MeasuremntCopyWith<$Res>(_value.unit!, (value) {
      return _then(_value.copyWith(unit: value));
    });
  }
}

/// @nodoc
abstract class _$UnitStateCopyWith<$Res> implements $UnitStateCopyWith<$Res> {
  factory _$UnitStateCopyWith(
          _UnitState value, $Res Function(_UnitState) then) =
      __$UnitStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Measuremnt? unit,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      Option<Either<UnitFailure, Measuremnt>>? saveFailureOrSuccessOption});

  @override
  $MeasuremntCopyWith<$Res>? get unit;
}

/// @nodoc
class __$UnitStateCopyWithImpl<$Res> extends _$UnitStateCopyWithImpl<$Res>
    implements _$UnitStateCopyWith<$Res> {
  __$UnitStateCopyWithImpl(_UnitState _value, $Res Function(_UnitState) _then)
      : super(_value, (v) => _then(v as _UnitState));

  @override
  _UnitState get _value => super._value as _UnitState;

  @override
  $Res call({
    Object? unit = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_UnitState(
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Measuremnt?,
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
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<UnitFailure, Measuremnt>>?,
    ));
  }
}

/// @nodoc

class _$_UnitState implements _UnitState {
  const _$_UnitState(
      {this.unit,
      this.showErrorMessages,
      this.isEditing,
      this.isSaving,
      this.saveFailureOrSuccessOption});

  @override
  final Measuremnt? unit;
  @override
  final bool? showErrorMessages;
  @override
  final bool? isEditing;
  @override
  final bool? isSaving;
  @override
  final Option<Either<UnitFailure, Measuremnt>>? saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'UnitState(unit: $unit, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnitState &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$UnitStateCopyWith<_UnitState> get copyWith =>
      __$UnitStateCopyWithImpl<_UnitState>(this, _$identity);
}

abstract class _UnitState implements UnitState {
  const factory _UnitState(
      {Measuremnt? unit,
      bool? showErrorMessages,
      bool? isEditing,
      bool? isSaving,
      Option<Either<UnitFailure, Measuremnt>>?
          saveFailureOrSuccessOption}) = _$_UnitState;

  @override
  Measuremnt? get unit;
  @override
  bool? get showErrorMessages;
  @override
  bool? get isEditing;
  @override
  bool? get isSaving;
  @override
  Option<Either<UnitFailure, Measuremnt>>? get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$UnitStateCopyWith<_UnitState> get copyWith =>
      throw _privateConstructorUsedError;
}
