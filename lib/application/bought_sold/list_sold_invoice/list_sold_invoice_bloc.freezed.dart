// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_sold_invoice_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListSoldInvoiceEventTearOff {
  const _$ListSoldInvoiceEventTearOff();

  _WatchFirstTen watchFirstTen(String? soldId) {
    return _WatchFirstTen(
      soldId,
    );
  }

  _WatchAfterTen watchAfterTen() {
    return const _WatchAfterTen();
  }

  _SoldReceived listSoldReceived(
      Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
      {bool? afterTenCountIsZeroToNine,
      bool? firstTenCountIsZero}) {
    return _SoldReceived(
      failureOrSold,
      afterTenCountIsZeroToNine: afterTenCountIsZeroToNine,
      firstTenCountIsZero: firstTenCountIsZero,
    );
  }
}

/// @nodoc
const $ListSoldInvoiceEvent = _$ListSoldInvoiceEventTearOff();

/// @nodoc
mixin _$ListSoldInvoiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? soldId) watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)
        listSoldReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? soldId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listSoldReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? soldId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listSoldReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFirstTen value) watchFirstTen,
    required TResult Function(_WatchAfterTen value) watchAfterTen,
    required TResult Function(_SoldReceived value) listSoldReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_SoldReceived value)? listSoldReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_SoldReceived value)? listSoldReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSoldInvoiceEventCopyWith<$Res> {
  factory $ListSoldInvoiceEventCopyWith(ListSoldInvoiceEvent value,
          $Res Function(ListSoldInvoiceEvent) then) =
      _$ListSoldInvoiceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListSoldInvoiceEventCopyWithImpl<$Res>
    implements $ListSoldInvoiceEventCopyWith<$Res> {
  _$ListSoldInvoiceEventCopyWithImpl(this._value, this._then);

  final ListSoldInvoiceEvent _value;
  // ignore: unused_field
  final $Res Function(ListSoldInvoiceEvent) _then;
}

/// @nodoc
abstract class _$WatchFirstTenCopyWith<$Res> {
  factory _$WatchFirstTenCopyWith(
          _WatchFirstTen value, $Res Function(_WatchFirstTen) then) =
      __$WatchFirstTenCopyWithImpl<$Res>;
  $Res call({String? soldId});
}

/// @nodoc
class __$WatchFirstTenCopyWithImpl<$Res>
    extends _$ListSoldInvoiceEventCopyWithImpl<$Res>
    implements _$WatchFirstTenCopyWith<$Res> {
  __$WatchFirstTenCopyWithImpl(
      _WatchFirstTen _value, $Res Function(_WatchFirstTen) _then)
      : super(_value, (v) => _then(v as _WatchFirstTen));

  @override
  _WatchFirstTen get _value => super._value as _WatchFirstTen;

  @override
  $Res call({
    Object? soldId = freezed,
  }) {
    return _then(_WatchFirstTen(
      soldId == freezed
          ? _value.soldId
          : soldId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WatchFirstTen implements _WatchFirstTen {
  const _$_WatchFirstTen(this.soldId);

  @override
  final String? soldId;

  @override
  String toString() {
    return 'ListSoldInvoiceEvent.watchFirstTen(soldId: $soldId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchFirstTen &&
            const DeepCollectionEquality().equals(other.soldId, soldId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(soldId));

  @JsonKey(ignore: true)
  @override
  _$WatchFirstTenCopyWith<_WatchFirstTen> get copyWith =>
      __$WatchFirstTenCopyWithImpl<_WatchFirstTen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? soldId) watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)
        listSoldReceived,
  }) {
    return watchFirstTen(soldId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? soldId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listSoldReceived,
  }) {
    return watchFirstTen?.call(soldId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? soldId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listSoldReceived,
    required TResult orElse(),
  }) {
    if (watchFirstTen != null) {
      return watchFirstTen(soldId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFirstTen value) watchFirstTen,
    required TResult Function(_WatchAfterTen value) watchAfterTen,
    required TResult Function(_SoldReceived value) listSoldReceived,
  }) {
    return watchFirstTen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_SoldReceived value)? listSoldReceived,
  }) {
    return watchFirstTen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_SoldReceived value)? listSoldReceived,
    required TResult orElse(),
  }) {
    if (watchFirstTen != null) {
      return watchFirstTen(this);
    }
    return orElse();
  }
}

abstract class _WatchFirstTen implements ListSoldInvoiceEvent {
  const factory _WatchFirstTen(String? soldId) = _$_WatchFirstTen;

  String? get soldId;
  @JsonKey(ignore: true)
  _$WatchFirstTenCopyWith<_WatchFirstTen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchAfterTenCopyWith<$Res> {
  factory _$WatchAfterTenCopyWith(
          _WatchAfterTen value, $Res Function(_WatchAfterTen) then) =
      __$WatchAfterTenCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAfterTenCopyWithImpl<$Res>
    extends _$ListSoldInvoiceEventCopyWithImpl<$Res>
    implements _$WatchAfterTenCopyWith<$Res> {
  __$WatchAfterTenCopyWithImpl(
      _WatchAfterTen _value, $Res Function(_WatchAfterTen) _then)
      : super(_value, (v) => _then(v as _WatchAfterTen));

  @override
  _WatchAfterTen get _value => super._value as _WatchAfterTen;
}

/// @nodoc

class _$_WatchAfterTen implements _WatchAfterTen {
  const _$_WatchAfterTen();

  @override
  String toString() {
    return 'ListSoldInvoiceEvent.watchAfterTen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchAfterTen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? soldId) watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)
        listSoldReceived,
  }) {
    return watchAfterTen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? soldId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listSoldReceived,
  }) {
    return watchAfterTen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? soldId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listSoldReceived,
    required TResult orElse(),
  }) {
    if (watchAfterTen != null) {
      return watchAfterTen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFirstTen value) watchFirstTen,
    required TResult Function(_WatchAfterTen value) watchAfterTen,
    required TResult Function(_SoldReceived value) listSoldReceived,
  }) {
    return watchAfterTen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_SoldReceived value)? listSoldReceived,
  }) {
    return watchAfterTen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_SoldReceived value)? listSoldReceived,
    required TResult orElse(),
  }) {
    if (watchAfterTen != null) {
      return watchAfterTen(this);
    }
    return orElse();
  }
}

abstract class _WatchAfterTen implements ListSoldInvoiceEvent {
  const factory _WatchAfterTen() = _$_WatchAfterTen;
}

/// @nodoc
abstract class _$SoldReceivedCopyWith<$Res> {
  factory _$SoldReceivedCopyWith(
          _SoldReceived value, $Res Function(_SoldReceived) then) =
      __$SoldReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
      bool? afterTenCountIsZeroToNine,
      bool? firstTenCountIsZero});
}

/// @nodoc
class __$SoldReceivedCopyWithImpl<$Res>
    extends _$ListSoldInvoiceEventCopyWithImpl<$Res>
    implements _$SoldReceivedCopyWith<$Res> {
  __$SoldReceivedCopyWithImpl(
      _SoldReceived _value, $Res Function(_SoldReceived) _then)
      : super(_value, (v) => _then(v as _SoldReceived));

  @override
  _SoldReceived get _value => super._value as _SoldReceived;

  @override
  $Res call({
    Object? failureOrSold = freezed,
    Object? afterTenCountIsZeroToNine = freezed,
    Object? firstTenCountIsZero = freezed,
  }) {
    return _then(_SoldReceived(
      failureOrSold == freezed
          ? _value.failureOrSold
          : failureOrSold // ignore: cast_nullable_to_non_nullable
              as Either<SoldNotFormFailure, List<SoldNotForm>>?,
      afterTenCountIsZeroToNine: afterTenCountIsZeroToNine == freezed
          ? _value.afterTenCountIsZeroToNine
          : afterTenCountIsZeroToNine // ignore: cast_nullable_to_non_nullable
              as bool?,
      firstTenCountIsZero: firstTenCountIsZero == freezed
          ? _value.firstTenCountIsZero
          : firstTenCountIsZero // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SoldReceived implements _SoldReceived {
  const _$_SoldReceived(this.failureOrSold,
      {this.afterTenCountIsZeroToNine, this.firstTenCountIsZero});

  @override
  final Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold;
  @override
  final bool? afterTenCountIsZeroToNine;
  @override
  final bool? firstTenCountIsZero;

  @override
  String toString() {
    return 'ListSoldInvoiceEvent.listSoldReceived(failureOrSold: $failureOrSold, afterTenCountIsZeroToNine: $afterTenCountIsZeroToNine, firstTenCountIsZero: $firstTenCountIsZero)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoldReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrSold, failureOrSold) &&
            const DeepCollectionEquality().equals(
                other.afterTenCountIsZeroToNine, afterTenCountIsZeroToNine) &&
            const DeepCollectionEquality()
                .equals(other.firstTenCountIsZero, firstTenCountIsZero));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrSold),
      const DeepCollectionEquality().hash(afterTenCountIsZeroToNine),
      const DeepCollectionEquality().hash(firstTenCountIsZero));

  @JsonKey(ignore: true)
  @override
  _$SoldReceivedCopyWith<_SoldReceived> get copyWith =>
      __$SoldReceivedCopyWithImpl<_SoldReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? soldId) watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)
        listSoldReceived,
  }) {
    return listSoldReceived(
        failureOrSold, afterTenCountIsZeroToNine, firstTenCountIsZero);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? soldId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listSoldReceived,
  }) {
    return listSoldReceived?.call(
        failureOrSold, afterTenCountIsZeroToNine, firstTenCountIsZero);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? soldId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listSoldReceived,
    required TResult orElse(),
  }) {
    if (listSoldReceived != null) {
      return listSoldReceived(
          failureOrSold, afterTenCountIsZeroToNine, firstTenCountIsZero);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFirstTen value) watchFirstTen,
    required TResult Function(_WatchAfterTen value) watchAfterTen,
    required TResult Function(_SoldReceived value) listSoldReceived,
  }) {
    return listSoldReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_SoldReceived value)? listSoldReceived,
  }) {
    return listSoldReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_SoldReceived value)? listSoldReceived,
    required TResult orElse(),
  }) {
    if (listSoldReceived != null) {
      return listSoldReceived(this);
    }
    return orElse();
  }
}

abstract class _SoldReceived implements ListSoldInvoiceEvent {
  const factory _SoldReceived(
      Either<SoldNotFormFailure, List<SoldNotForm>>? failureOrSold,
      {bool? afterTenCountIsZeroToNine,
      bool? firstTenCountIsZero}) = _$_SoldReceived;

  Either<SoldNotFormFailure, List<SoldNotForm>>? get failureOrSold;
  bool? get afterTenCountIsZeroToNine;
  bool? get firstTenCountIsZero;
  @JsonKey(ignore: true)
  _$SoldReceivedCopyWith<_SoldReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListSoldInvoiceStateTearOff {
  const _$ListSoldInvoiceStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<SoldNotForm>? sold,
      {bool? watchFirstTenCountIsZero, bool? watchAfterTenCountIsZeroToNine}) {
    return _LoadSuccess(
      sold,
      watchFirstTenCountIsZero: watchFirstTenCountIsZero,
      watchAfterTenCountIsZeroToNine: watchAfterTenCountIsZeroToNine,
    );
  }

  _LoadFailure loadFailure(SoldNotFormFailure? soldFailure) {
    return _LoadFailure(
      soldFailure,
    );
  }
}

/// @nodoc
const $ListSoldInvoiceState = _$ListSoldInvoiceStateTearOff();

/// @nodoc
mixin _$ListSoldInvoiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<SoldNotForm>? sold,
            bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)
        loadSuccess,
    required TResult Function(SoldNotFormFailure? soldFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<SoldNotForm>? sold, bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)?
        loadSuccess,
    TResult Function(SoldNotFormFailure? soldFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<SoldNotForm>? sold, bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)?
        loadSuccess,
    TResult Function(SoldNotFormFailure? soldFailure)? loadFailure,
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
abstract class $ListSoldInvoiceStateCopyWith<$Res> {
  factory $ListSoldInvoiceStateCopyWith(ListSoldInvoiceState value,
          $Res Function(ListSoldInvoiceState) then) =
      _$ListSoldInvoiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListSoldInvoiceStateCopyWithImpl<$Res>
    implements $ListSoldInvoiceStateCopyWith<$Res> {
  _$ListSoldInvoiceStateCopyWithImpl(this._value, this._then);

  final ListSoldInvoiceState _value;
  // ignore: unused_field
  final $Res Function(ListSoldInvoiceState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ListSoldInvoiceStateCopyWithImpl<$Res>
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
    return 'ListSoldInvoiceState.initial()';
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
    required TResult Function(
            List<SoldNotForm>? sold,
            bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)
        loadSuccess,
    required TResult Function(SoldNotFormFailure? soldFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<SoldNotForm>? sold, bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)?
        loadSuccess,
    TResult Function(SoldNotFormFailure? soldFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<SoldNotForm>? sold, bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)?
        loadSuccess,
    TResult Function(SoldNotFormFailure? soldFailure)? loadFailure,
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
}

abstract class _Initial implements ListSoldInvoiceState {
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
    extends _$ListSoldInvoiceStateCopyWithImpl<$Res>
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
    return 'ListSoldInvoiceState.loadInProgress()';
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
    required TResult Function(
            List<SoldNotForm>? sold,
            bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)
        loadSuccess,
    required TResult Function(SoldNotFormFailure? soldFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<SoldNotForm>? sold, bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)?
        loadSuccess,
    TResult Function(SoldNotFormFailure? soldFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<SoldNotForm>? sold, bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)?
        loadSuccess,
    TResult Function(SoldNotFormFailure? soldFailure)? loadFailure,
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
}

abstract class _LoadInProgress implements ListSoldInvoiceState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {List<SoldNotForm>? sold,
      bool? watchFirstTenCountIsZero,
      bool? watchAfterTenCountIsZeroToNine});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ListSoldInvoiceStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? sold = freezed,
    Object? watchFirstTenCountIsZero = freezed,
    Object? watchAfterTenCountIsZeroToNine = freezed,
  }) {
    return _then(_LoadSuccess(
      sold == freezed
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as List<SoldNotForm>?,
      watchFirstTenCountIsZero: watchFirstTenCountIsZero == freezed
          ? _value.watchFirstTenCountIsZero
          : watchFirstTenCountIsZero // ignore: cast_nullable_to_non_nullable
              as bool?,
      watchAfterTenCountIsZeroToNine: watchAfterTenCountIsZeroToNine == freezed
          ? _value.watchAfterTenCountIsZeroToNine
          : watchAfterTenCountIsZeroToNine // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.sold,
      {this.watchFirstTenCountIsZero, this.watchAfterTenCountIsZeroToNine});

  @override
  final List<SoldNotForm>? sold;
  @override
  final bool? watchFirstTenCountIsZero;
  @override
  final bool? watchAfterTenCountIsZeroToNine;

  @override
  String toString() {
    return 'ListSoldInvoiceState.loadSuccess(sold: $sold, watchFirstTenCountIsZero: $watchFirstTenCountIsZero, watchAfterTenCountIsZeroToNine: $watchAfterTenCountIsZeroToNine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.sold, sold) &&
            const DeepCollectionEquality().equals(
                other.watchFirstTenCountIsZero, watchFirstTenCountIsZero) &&
            const DeepCollectionEquality().equals(
                other.watchAfterTenCountIsZeroToNine,
                watchAfterTenCountIsZeroToNine));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sold),
      const DeepCollectionEquality().hash(watchFirstTenCountIsZero),
      const DeepCollectionEquality().hash(watchAfterTenCountIsZeroToNine));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<SoldNotForm>? sold,
            bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)
        loadSuccess,
    required TResult Function(SoldNotFormFailure? soldFailure) loadFailure,
  }) {
    return loadSuccess(
        sold, watchFirstTenCountIsZero, watchAfterTenCountIsZeroToNine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<SoldNotForm>? sold, bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)?
        loadSuccess,
    TResult Function(SoldNotFormFailure? soldFailure)? loadFailure,
  }) {
    return loadSuccess?.call(
        sold, watchFirstTenCountIsZero, watchAfterTenCountIsZeroToNine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<SoldNotForm>? sold, bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)?
        loadSuccess,
    TResult Function(SoldNotFormFailure? soldFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(
          sold, watchFirstTenCountIsZero, watchAfterTenCountIsZeroToNine);
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
}

abstract class _LoadSuccess implements ListSoldInvoiceState {
  const factory _LoadSuccess(List<SoldNotForm>? sold,
      {bool? watchFirstTenCountIsZero,
      bool? watchAfterTenCountIsZeroToNine}) = _$_LoadSuccess;

  List<SoldNotForm>? get sold;
  bool? get watchFirstTenCountIsZero;
  bool? get watchAfterTenCountIsZeroToNine;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({SoldNotFormFailure? soldFailure});

  $SoldNotFormFailureCopyWith<$Res>? get soldFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ListSoldInvoiceStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? soldFailure = freezed,
  }) {
    return _then(_LoadFailure(
      soldFailure == freezed
          ? _value.soldFailure
          : soldFailure // ignore: cast_nullable_to_non_nullable
              as SoldNotFormFailure?,
    ));
  }

  @override
  $SoldNotFormFailureCopyWith<$Res>? get soldFailure {
    if (_value.soldFailure == null) {
      return null;
    }

    return $SoldNotFormFailureCopyWith<$Res>(_value.soldFailure!, (value) {
      return _then(_value.copyWith(soldFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.soldFailure);

  @override
  final SoldNotFormFailure? soldFailure;

  @override
  String toString() {
    return 'ListSoldInvoiceState.loadFailure(soldFailure: $soldFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.soldFailure, soldFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(soldFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<SoldNotForm>? sold,
            bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)
        loadSuccess,
    required TResult Function(SoldNotFormFailure? soldFailure) loadFailure,
  }) {
    return loadFailure(soldFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<SoldNotForm>? sold, bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)?
        loadSuccess,
    TResult Function(SoldNotFormFailure? soldFailure)? loadFailure,
  }) {
    return loadFailure?.call(soldFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<SoldNotForm>? sold, bool? watchFirstTenCountIsZero,
            bool? watchAfterTenCountIsZeroToNine)?
        loadSuccess,
    TResult Function(SoldNotFormFailure? soldFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(soldFailure);
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
}

abstract class _LoadFailure implements ListSoldInvoiceState {
  const factory _LoadFailure(SoldNotFormFailure? soldFailure) = _$_LoadFailure;

  SoldNotFormFailure? get soldFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
