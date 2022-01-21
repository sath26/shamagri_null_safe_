// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quotation_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuotationWatcherEventTearOff {
  const _$QuotationWatcherEventTearOff();

  _Started started() {
    return const _Started();
  }

  _QuotationsReceived quotationsReceived(
      Either<QuotationFailure, List<Quotation>> failureOrQuotation) {
    return _QuotationsReceived(
      failureOrQuotation,
    );
  }

  _ChangeSelected changeSelected(
      List<Quotation> items, bool value, Quotation entry) {
    return _ChangeSelected(
      items,
      value,
      entry,
    );
  }
}

/// @nodoc
const $QuotationWatcherEvent = _$QuotationWatcherEventTearOff();

/// @nodoc
mixin _$QuotationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)
        quotationsReceived,
    required TResult Function(
            List<Quotation> items, bool value, Quotation entry)
        changeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)?
        quotationsReceived,
    TResult Function(List<Quotation> items, bool value, Quotation entry)?
        changeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)?
        quotationsReceived,
    TResult Function(List<Quotation> items, bool value, Quotation entry)?
        changeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QuotationsReceived value) quotationsReceived,
    required TResult Function(_ChangeSelected value) changeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuotationsReceived value)? quotationsReceived,
    TResult Function(_ChangeSelected value)? changeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuotationsReceived value)? quotationsReceived,
    TResult Function(_ChangeSelected value)? changeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationWatcherEventCopyWith<$Res> {
  factory $QuotationWatcherEventCopyWith(QuotationWatcherEvent value,
          $Res Function(QuotationWatcherEvent) then) =
      _$QuotationWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuotationWatcherEventCopyWithImpl<$Res>
    implements $QuotationWatcherEventCopyWith<$Res> {
  _$QuotationWatcherEventCopyWithImpl(this._value, this._then);

  final QuotationWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(QuotationWatcherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$QuotationWatcherEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'QuotationWatcherEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)
        quotationsReceived,
    required TResult Function(
            List<Quotation> items, bool value, Quotation entry)
        changeSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)?
        quotationsReceived,
    TResult Function(List<Quotation> items, bool value, Quotation entry)?
        changeSelected,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)?
        quotationsReceived,
    TResult Function(List<Quotation> items, bool value, Quotation entry)?
        changeSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QuotationsReceived value) quotationsReceived,
    required TResult Function(_ChangeSelected value) changeSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuotationsReceived value)? quotationsReceived,
    TResult Function(_ChangeSelected value)? changeSelected,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuotationsReceived value)? quotationsReceived,
    TResult Function(_ChangeSelected value)? changeSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuotationWatcherEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$QuotationsReceivedCopyWith<$Res> {
  factory _$QuotationsReceivedCopyWith(
          _QuotationsReceived value, $Res Function(_QuotationsReceived) then) =
      __$QuotationsReceivedCopyWithImpl<$Res>;
  $Res call({Either<QuotationFailure, List<Quotation>> failureOrQuotation});
}

/// @nodoc
class __$QuotationsReceivedCopyWithImpl<$Res>
    extends _$QuotationWatcherEventCopyWithImpl<$Res>
    implements _$QuotationsReceivedCopyWith<$Res> {
  __$QuotationsReceivedCopyWithImpl(
      _QuotationsReceived _value, $Res Function(_QuotationsReceived) _then)
      : super(_value, (v) => _then(v as _QuotationsReceived));

  @override
  _QuotationsReceived get _value => super._value as _QuotationsReceived;

  @override
  $Res call({
    Object? failureOrQuotation = freezed,
  }) {
    return _then(_QuotationsReceived(
      failureOrQuotation == freezed
          ? _value.failureOrQuotation
          : failureOrQuotation // ignore: cast_nullable_to_non_nullable
              as Either<QuotationFailure, List<Quotation>>,
    ));
  }
}

/// @nodoc

class _$_QuotationsReceived implements _QuotationsReceived {
  const _$_QuotationsReceived(this.failureOrQuotation);

  @override
  final Either<QuotationFailure, List<Quotation>> failureOrQuotation;

  @override
  String toString() {
    return 'QuotationWatcherEvent.quotationsReceived(failureOrQuotation: $failureOrQuotation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuotationsReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrQuotation, failureOrQuotation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrQuotation));

  @JsonKey(ignore: true)
  @override
  _$QuotationsReceivedCopyWith<_QuotationsReceived> get copyWith =>
      __$QuotationsReceivedCopyWithImpl<_QuotationsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)
        quotationsReceived,
    required TResult Function(
            List<Quotation> items, bool value, Quotation entry)
        changeSelected,
  }) {
    return quotationsReceived(failureOrQuotation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)?
        quotationsReceived,
    TResult Function(List<Quotation> items, bool value, Quotation entry)?
        changeSelected,
  }) {
    return quotationsReceived?.call(failureOrQuotation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)?
        quotationsReceived,
    TResult Function(List<Quotation> items, bool value, Quotation entry)?
        changeSelected,
    required TResult orElse(),
  }) {
    if (quotationsReceived != null) {
      return quotationsReceived(failureOrQuotation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QuotationsReceived value) quotationsReceived,
    required TResult Function(_ChangeSelected value) changeSelected,
  }) {
    return quotationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuotationsReceived value)? quotationsReceived,
    TResult Function(_ChangeSelected value)? changeSelected,
  }) {
    return quotationsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuotationsReceived value)? quotationsReceived,
    TResult Function(_ChangeSelected value)? changeSelected,
    required TResult orElse(),
  }) {
    if (quotationsReceived != null) {
      return quotationsReceived(this);
    }
    return orElse();
  }
}

abstract class _QuotationsReceived implements QuotationWatcherEvent {
  const factory _QuotationsReceived(
          Either<QuotationFailure, List<Quotation>> failureOrQuotation) =
      _$_QuotationsReceived;

  Either<QuotationFailure, List<Quotation>> get failureOrQuotation;
  @JsonKey(ignore: true)
  _$QuotationsReceivedCopyWith<_QuotationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeSelectedCopyWith<$Res> {
  factory _$ChangeSelectedCopyWith(
          _ChangeSelected value, $Res Function(_ChangeSelected) then) =
      __$ChangeSelectedCopyWithImpl<$Res>;
  $Res call({List<Quotation> items, bool value, Quotation entry});

  $QuotationCopyWith<$Res> get entry;
}

/// @nodoc
class __$ChangeSelectedCopyWithImpl<$Res>
    extends _$QuotationWatcherEventCopyWithImpl<$Res>
    implements _$ChangeSelectedCopyWith<$Res> {
  __$ChangeSelectedCopyWithImpl(
      _ChangeSelected _value, $Res Function(_ChangeSelected) _then)
      : super(_value, (v) => _then(v as _ChangeSelected));

  @override
  _ChangeSelected get _value => super._value as _ChangeSelected;

  @override
  $Res call({
    Object? items = freezed,
    Object? value = freezed,
    Object? entry = freezed,
  }) {
    return _then(_ChangeSelected(
      items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Quotation>,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
      entry == freezed
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as Quotation,
    ));
  }

  @override
  $QuotationCopyWith<$Res> get entry {
    return $QuotationCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value));
    });
  }
}

/// @nodoc

class _$_ChangeSelected implements _ChangeSelected {
  const _$_ChangeSelected(this.items, this.value, this.entry);

  @override
  final List<Quotation> items;
  @override
  final bool value;
  @override
  final Quotation entry;

  @override
  String toString() {
    return 'QuotationWatcherEvent.changeSelected(items: $items, value: $value, entry: $entry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeSelected &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.entry, entry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(entry));

  @JsonKey(ignore: true)
  @override
  _$ChangeSelectedCopyWith<_ChangeSelected> get copyWith =>
      __$ChangeSelectedCopyWithImpl<_ChangeSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)
        quotationsReceived,
    required TResult Function(
            List<Quotation> items, bool value, Quotation entry)
        changeSelected,
  }) {
    return changeSelected(items, value, entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)?
        quotationsReceived,
    TResult Function(List<Quotation> items, bool value, Quotation entry)?
        changeSelected,
  }) {
    return changeSelected?.call(items, value, entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<QuotationFailure, List<Quotation>> failureOrQuotation)?
        quotationsReceived,
    TResult Function(List<Quotation> items, bool value, Quotation entry)?
        changeSelected,
    required TResult orElse(),
  }) {
    if (changeSelected != null) {
      return changeSelected(items, value, entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_QuotationsReceived value) quotationsReceived,
    required TResult Function(_ChangeSelected value) changeSelected,
  }) {
    return changeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuotationsReceived value)? quotationsReceived,
    TResult Function(_ChangeSelected value)? changeSelected,
  }) {
    return changeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_QuotationsReceived value)? quotationsReceived,
    TResult Function(_ChangeSelected value)? changeSelected,
    required TResult orElse(),
  }) {
    if (changeSelected != null) {
      return changeSelected(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelected implements QuotationWatcherEvent {
  const factory _ChangeSelected(
      List<Quotation> items, bool value, Quotation entry) = _$_ChangeSelected;

  List<Quotation> get items;
  bool get value;
  Quotation get entry;
  @JsonKey(ignore: true)
  _$ChangeSelectedCopyWith<_ChangeSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuotationWatcherStateTearOff {
  const _$QuotationWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Quotation> units) {
    return _LoadSuccess(
      units,
    );
  }

  _LoadFailure loadFailure(QuotationFailure unitFailure) {
    return _LoadFailure(
      unitFailure,
    );
  }
}

/// @nodoc
const $QuotationWatcherState = _$QuotationWatcherStateTearOff();

/// @nodoc
mixin _$QuotationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Quotation> units) loadSuccess,
    required TResult Function(QuotationFailure unitFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Quotation> units)? loadSuccess,
    TResult Function(QuotationFailure unitFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Quotation> units)? loadSuccess,
    TResult Function(QuotationFailure unitFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationWatcherStateCopyWith<$Res> {
  factory $QuotationWatcherStateCopyWith(QuotationWatcherState value,
          $Res Function(QuotationWatcherState) then) =
      _$QuotationWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuotationWatcherStateCopyWithImpl<$Res>
    implements $QuotationWatcherStateCopyWith<$Res> {
  _$QuotationWatcherStateCopyWithImpl(this._value, this._then);

  final QuotationWatcherState _value;
  // ignore: unused_field
  final $Res Function(QuotationWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$QuotationWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'QuotationWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Quotation> units) loadSuccess,
    required TResult Function(QuotationFailure unitFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Quotation> units)? loadSuccess,
    TResult Function(QuotationFailure unitFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Quotation> units)? loadSuccess,
    TResult Function(QuotationFailure unitFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  // TODO: implement items
  List<Quotation> get items => [];
}

abstract class _Initial implements QuotationWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$QuotationWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'QuotationWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Quotation> units) loadSuccess,
    required TResult Function(QuotationFailure unitFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Quotation> units)? loadSuccess,
    TResult Function(QuotationFailure unitFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Quotation> units)? loadSuccess,
    TResult Function(QuotationFailure unitFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }

  @override
  // TODO: implement items
  List<Quotation> get items => [];
}

abstract class _LoadInProgress implements QuotationWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Quotation> units});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$QuotationWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? units = freezed,
  }) {
    return _then(_LoadSuccess(
      units == freezed
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as List<Quotation>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.units);

  @override
  final List<Quotation> units;

  @override
  String toString() {
    return 'QuotationWatcherState.loadSuccess(units: $units)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.units, units));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(units));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Quotation> units) loadSuccess,
    required TResult Function(QuotationFailure unitFailure) loadFailure,
  }) {
    return loadSuccess(units);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Quotation> units)? loadSuccess,
    TResult Function(QuotationFailure unitFailure)? loadFailure,
  }) {
    return loadSuccess?.call(units);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Quotation> units)? loadSuccess,
    TResult Function(QuotationFailure unitFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(units);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }

  @override
  // TODO: implement items
  List<Quotation> get items => units;
}

abstract class _LoadSuccess implements QuotationWatcherState {
  const factory _LoadSuccess(List<Quotation> units) = _$_LoadSuccess;

  List<Quotation> get units;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({QuotationFailure unitFailure});

  $QuotationFailureCopyWith<$Res> get unitFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$QuotationWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? unitFailure = freezed,
  }) {
    return _then(_LoadFailure(
      unitFailure == freezed
          ? _value.unitFailure
          : unitFailure // ignore: cast_nullable_to_non_nullable
              as QuotationFailure,
    ));
  }

  @override
  $QuotationFailureCopyWith<$Res> get unitFailure {
    return $QuotationFailureCopyWith<$Res>(_value.unitFailure, (value) {
      return _then(_value.copyWith(unitFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.unitFailure);

  @override
  final QuotationFailure unitFailure;

  @override
  String toString() {
    return 'QuotationWatcherState.loadFailure(unitFailure: $unitFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.unitFailure, unitFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(unitFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Quotation> units) loadSuccess,
    required TResult Function(QuotationFailure unitFailure) loadFailure,
  }) {
    return loadFailure(unitFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Quotation> units)? loadSuccess,
    TResult Function(QuotationFailure unitFailure)? loadFailure,
  }) {
    return loadFailure?.call(unitFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Quotation> units)? loadSuccess,
    TResult Function(QuotationFailure unitFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(unitFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }

  @override
  // TODO: implement items
  List<Quotation> get items => [];
}

abstract class _LoadFailure implements QuotationWatcherState {
  const factory _LoadFailure(QuotationFailure unitFailure) = _$_LoadFailure;

  QuotationFailure get unitFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
