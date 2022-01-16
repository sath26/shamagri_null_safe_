// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_bought_invoice_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListBoughtInvoiceEventTearOff {
  const _$ListBoughtInvoiceEventTearOff();

  _WatchFirstTen watchFirstTen(String? boughtId) {
    return _WatchFirstTen(
      boughtId,
    );
  }

  _WatchAfterTen watchAfterTen() {
    return const _WatchAfterTen();
  }

  _ListBoughtReceived listBoughtReceived(
      Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
      {bool? afterTenCountIsZeroToNine,
      bool? firstTenCountIsZero}) {
    return _ListBoughtReceived(
      failureOrBought,
      afterTenCountIsZeroToNine: afterTenCountIsZeroToNine,
      firstTenCountIsZero: firstTenCountIsZero,
    );
  }
}

/// @nodoc
const $ListBoughtInvoiceEvent = _$ListBoughtInvoiceEventTearOff();

/// @nodoc
mixin _$ListBoughtInvoiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? boughtId) watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)
        listBoughtReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? boughtId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? boughtId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFirstTen value) watchFirstTen,
    required TResult Function(_WatchAfterTen value) watchAfterTen,
    required TResult Function(_ListBoughtReceived value) listBoughtReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_ListBoughtReceived value)? listBoughtReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_ListBoughtReceived value)? listBoughtReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBoughtInvoiceEventCopyWith<$Res> {
  factory $ListBoughtInvoiceEventCopyWith(ListBoughtInvoiceEvent value,
          $Res Function(ListBoughtInvoiceEvent) then) =
      _$ListBoughtInvoiceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListBoughtInvoiceEventCopyWithImpl<$Res>
    implements $ListBoughtInvoiceEventCopyWith<$Res> {
  _$ListBoughtInvoiceEventCopyWithImpl(this._value, this._then);

  final ListBoughtInvoiceEvent _value;
  // ignore: unused_field
  final $Res Function(ListBoughtInvoiceEvent) _then;
}

/// @nodoc
abstract class _$WatchFirstTenCopyWith<$Res> {
  factory _$WatchFirstTenCopyWith(
          _WatchFirstTen value, $Res Function(_WatchFirstTen) then) =
      __$WatchFirstTenCopyWithImpl<$Res>;
  $Res call({String? boughtId});
}

/// @nodoc
class __$WatchFirstTenCopyWithImpl<$Res>
    extends _$ListBoughtInvoiceEventCopyWithImpl<$Res>
    implements _$WatchFirstTenCopyWith<$Res> {
  __$WatchFirstTenCopyWithImpl(
      _WatchFirstTen _value, $Res Function(_WatchFirstTen) _then)
      : super(_value, (v) => _then(v as _WatchFirstTen));

  @override
  _WatchFirstTen get _value => super._value as _WatchFirstTen;

  @override
  $Res call({
    Object? boughtId = freezed,
  }) {
    return _then(_WatchFirstTen(
      boughtId == freezed
          ? _value.boughtId
          : boughtId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WatchFirstTen implements _WatchFirstTen {
  const _$_WatchFirstTen(this.boughtId);

  @override
  final String? boughtId;

  @override
  String toString() {
    return 'ListBoughtInvoiceEvent.watchFirstTen(boughtId: $boughtId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchFirstTen &&
            const DeepCollectionEquality().equals(other.boughtId, boughtId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(boughtId));

  @JsonKey(ignore: true)
  @override
  _$WatchFirstTenCopyWith<_WatchFirstTen> get copyWith =>
      __$WatchFirstTenCopyWithImpl<_WatchFirstTen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? boughtId) watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)
        listBoughtReceived,
  }) {
    return watchFirstTen(boughtId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? boughtId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
  }) {
    return watchFirstTen?.call(boughtId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? boughtId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
    required TResult orElse(),
  }) {
    if (watchFirstTen != null) {
      return watchFirstTen(boughtId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFirstTen value) watchFirstTen,
    required TResult Function(_WatchAfterTen value) watchAfterTen,
    required TResult Function(_ListBoughtReceived value) listBoughtReceived,
  }) {
    return watchFirstTen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_ListBoughtReceived value)? listBoughtReceived,
  }) {
    return watchFirstTen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_ListBoughtReceived value)? listBoughtReceived,
    required TResult orElse(),
  }) {
    if (watchFirstTen != null) {
      return watchFirstTen(this);
    }
    return orElse();
  }
}

abstract class _WatchFirstTen implements ListBoughtInvoiceEvent {
  const factory _WatchFirstTen(String? boughtId) = _$_WatchFirstTen;

  String? get boughtId;
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
    extends _$ListBoughtInvoiceEventCopyWithImpl<$Res>
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
    return 'ListBoughtInvoiceEvent.watchAfterTen()';
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
    required TResult Function(String? boughtId) watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)
        listBoughtReceived,
  }) {
    return watchAfterTen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? boughtId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
  }) {
    return watchAfterTen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? boughtId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
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
    required TResult Function(_ListBoughtReceived value) listBoughtReceived,
  }) {
    return watchAfterTen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_ListBoughtReceived value)? listBoughtReceived,
  }) {
    return watchAfterTen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_ListBoughtReceived value)? listBoughtReceived,
    required TResult orElse(),
  }) {
    if (watchAfterTen != null) {
      return watchAfterTen(this);
    }
    return orElse();
  }
}

abstract class _WatchAfterTen implements ListBoughtInvoiceEvent {
  const factory _WatchAfterTen() = _$_WatchAfterTen;
}

/// @nodoc
abstract class _$ListBoughtReceivedCopyWith<$Res> {
  factory _$ListBoughtReceivedCopyWith(
          _ListBoughtReceived value, $Res Function(_ListBoughtReceived) then) =
      __$ListBoughtReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
      bool? afterTenCountIsZeroToNine,
      bool? firstTenCountIsZero});
}

/// @nodoc
class __$ListBoughtReceivedCopyWithImpl<$Res>
    extends _$ListBoughtInvoiceEventCopyWithImpl<$Res>
    implements _$ListBoughtReceivedCopyWith<$Res> {
  __$ListBoughtReceivedCopyWithImpl(
      _ListBoughtReceived _value, $Res Function(_ListBoughtReceived) _then)
      : super(_value, (v) => _then(v as _ListBoughtReceived));

  @override
  _ListBoughtReceived get _value => super._value as _ListBoughtReceived;

  @override
  $Res call({
    Object? failureOrBought = freezed,
    Object? afterTenCountIsZeroToNine = freezed,
    Object? firstTenCountIsZero = freezed,
  }) {
    return _then(_ListBoughtReceived(
      failureOrBought == freezed
          ? _value.failureOrBought
          : failureOrBought // ignore: cast_nullable_to_non_nullable
              as Either<BoughtNotFormFailure, List<BoughtNotForm>>?,
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

class _$_ListBoughtReceived implements _ListBoughtReceived {
  const _$_ListBoughtReceived(this.failureOrBought,
      {this.afterTenCountIsZeroToNine, this.firstTenCountIsZero});

  @override
  final Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought;
  @override
  final bool? afterTenCountIsZeroToNine;
  @override
  final bool? firstTenCountIsZero;

  @override
  String toString() {
    return 'ListBoughtInvoiceEvent.listBoughtReceived(failureOrBought: $failureOrBought, afterTenCountIsZeroToNine: $afterTenCountIsZeroToNine, firstTenCountIsZero: $firstTenCountIsZero)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListBoughtReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrBought, failureOrBought) &&
            const DeepCollectionEquality().equals(
                other.afterTenCountIsZeroToNine, afterTenCountIsZeroToNine) &&
            const DeepCollectionEquality()
                .equals(other.firstTenCountIsZero, firstTenCountIsZero));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrBought),
      const DeepCollectionEquality().hash(afterTenCountIsZeroToNine),
      const DeepCollectionEquality().hash(firstTenCountIsZero));

  @JsonKey(ignore: true)
  @override
  _$ListBoughtReceivedCopyWith<_ListBoughtReceived> get copyWith =>
      __$ListBoughtReceivedCopyWithImpl<_ListBoughtReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? boughtId) watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)
        listBoughtReceived,
  }) {
    return listBoughtReceived(
        failureOrBought, afterTenCountIsZeroToNine, firstTenCountIsZero);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? boughtId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
  }) {
    return listBoughtReceived?.call(
        failureOrBought, afterTenCountIsZeroToNine, firstTenCountIsZero);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? boughtId)? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
            bool? afterTenCountIsZeroToNine,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
    required TResult orElse(),
  }) {
    if (listBoughtReceived != null) {
      return listBoughtReceived(
          failureOrBought, afterTenCountIsZeroToNine, firstTenCountIsZero);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFirstTen value) watchFirstTen,
    required TResult Function(_WatchAfterTen value) watchAfterTen,
    required TResult Function(_ListBoughtReceived value) listBoughtReceived,
  }) {
    return listBoughtReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_ListBoughtReceived value)? listBoughtReceived,
  }) {
    return listBoughtReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFirstTen value)? watchFirstTen,
    TResult Function(_WatchAfterTen value)? watchAfterTen,
    TResult Function(_ListBoughtReceived value)? listBoughtReceived,
    required TResult orElse(),
  }) {
    if (listBoughtReceived != null) {
      return listBoughtReceived(this);
    }
    return orElse();
  }
}

abstract class _ListBoughtReceived implements ListBoughtInvoiceEvent {
  const factory _ListBoughtReceived(
      Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
      {bool? afterTenCountIsZeroToNine,
      bool? firstTenCountIsZero}) = _$_ListBoughtReceived;

  Either<BoughtNotFormFailure, List<BoughtNotForm>>? get failureOrBought;
  bool? get afterTenCountIsZeroToNine;
  bool? get firstTenCountIsZero;
  @JsonKey(ignore: true)
  _$ListBoughtReceivedCopyWith<_ListBoughtReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListBoughtInvoiceStateTearOff {
  const _$ListBoughtInvoiceStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<BoughtNotForm>? bought,
      {bool? watchAfterTenCountIsZeroToNine, bool? watchFirstTenCountIsZero}) {
    return _LoadSuccess(
      bought,
      watchAfterTenCountIsZeroToNine: watchAfterTenCountIsZeroToNine,
      watchFirstTenCountIsZero: watchFirstTenCountIsZero,
    );
  }

  _LoadFailure loadFailure(BoughtNotFormFailure? boughtFailure) {
    return _LoadFailure(
      boughtFailure,
    );
  }
}

/// @nodoc
const $ListBoughtInvoiceState = _$ListBoughtInvoiceStateTearOff();

/// @nodoc
mixin _$ListBoughtInvoiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)
        loadSuccess,
    required TResult Function(BoughtNotFormFailure? boughtFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(BoughtNotFormFailure? boughtFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(BoughtNotFormFailure? boughtFailure)? loadFailure,
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
abstract class $ListBoughtInvoiceStateCopyWith<$Res> {
  factory $ListBoughtInvoiceStateCopyWith(ListBoughtInvoiceState value,
          $Res Function(ListBoughtInvoiceState) then) =
      _$ListBoughtInvoiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListBoughtInvoiceStateCopyWithImpl<$Res>
    implements $ListBoughtInvoiceStateCopyWith<$Res> {
  _$ListBoughtInvoiceStateCopyWithImpl(this._value, this._then);

  final ListBoughtInvoiceState _value;
  // ignore: unused_field
  final $Res Function(ListBoughtInvoiceState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ListBoughtInvoiceStateCopyWithImpl<$Res>
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
    return 'ListBoughtInvoiceState.initial()';
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
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)
        loadSuccess,
    required TResult Function(BoughtNotFormFailure? boughtFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(BoughtNotFormFailure? boughtFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(BoughtNotFormFailure? boughtFailure)? loadFailure,
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

abstract class _Initial implements ListBoughtInvoiceState {
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
    extends _$ListBoughtInvoiceStateCopyWithImpl<$Res>
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
    return 'ListBoughtInvoiceState.loadInProgress()';
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
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)
        loadSuccess,
    required TResult Function(BoughtNotFormFailure? boughtFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(BoughtNotFormFailure? boughtFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(BoughtNotFormFailure? boughtFailure)? loadFailure,
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

abstract class _LoadInProgress implements ListBoughtInvoiceState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {List<BoughtNotForm>? bought,
      bool? watchAfterTenCountIsZeroToNine,
      bool? watchFirstTenCountIsZero});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ListBoughtInvoiceStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? bought = freezed,
    Object? watchAfterTenCountIsZeroToNine = freezed,
    Object? watchFirstTenCountIsZero = freezed,
  }) {
    return _then(_LoadSuccess(
      bought == freezed
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as List<BoughtNotForm>?,
      watchAfterTenCountIsZeroToNine: watchAfterTenCountIsZeroToNine == freezed
          ? _value.watchAfterTenCountIsZeroToNine
          : watchAfterTenCountIsZeroToNine // ignore: cast_nullable_to_non_nullable
              as bool?,
      watchFirstTenCountIsZero: watchFirstTenCountIsZero == freezed
          ? _value.watchFirstTenCountIsZero
          : watchFirstTenCountIsZero // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.bought,
      {this.watchAfterTenCountIsZeroToNine, this.watchFirstTenCountIsZero});

  @override
  final List<BoughtNotForm>? bought;
  @override
  final bool? watchAfterTenCountIsZeroToNine;
  @override
  final bool? watchFirstTenCountIsZero;

  @override
  String toString() {
    return 'ListBoughtInvoiceState.loadSuccess(bought: $bought, watchAfterTenCountIsZeroToNine: $watchAfterTenCountIsZeroToNine, watchFirstTenCountIsZero: $watchFirstTenCountIsZero)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.bought, bought) &&
            const DeepCollectionEquality().equals(
                other.watchAfterTenCountIsZeroToNine,
                watchAfterTenCountIsZeroToNine) &&
            const DeepCollectionEquality().equals(
                other.watchFirstTenCountIsZero, watchFirstTenCountIsZero));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bought),
      const DeepCollectionEquality().hash(watchAfterTenCountIsZeroToNine),
      const DeepCollectionEquality().hash(watchFirstTenCountIsZero));

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
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)
        loadSuccess,
    required TResult Function(BoughtNotFormFailure? boughtFailure) loadFailure,
  }) {
    return loadSuccess(
        bought, watchAfterTenCountIsZeroToNine, watchFirstTenCountIsZero);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(BoughtNotFormFailure? boughtFailure)? loadFailure,
  }) {
    return loadSuccess?.call(
        bought, watchAfterTenCountIsZeroToNine, watchFirstTenCountIsZero);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(BoughtNotFormFailure? boughtFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(
          bought, watchAfterTenCountIsZeroToNine, watchFirstTenCountIsZero);
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

abstract class _LoadSuccess implements ListBoughtInvoiceState {
  const factory _LoadSuccess(List<BoughtNotForm>? bought,
      {bool? watchAfterTenCountIsZeroToNine,
      bool? watchFirstTenCountIsZero}) = _$_LoadSuccess;

  List<BoughtNotForm>? get bought;
  bool? get watchAfterTenCountIsZeroToNine;
  bool? get watchFirstTenCountIsZero;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({BoughtNotFormFailure? boughtFailure});

  $BoughtNotFormFailureCopyWith<$Res>? get boughtFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ListBoughtInvoiceStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? boughtFailure = freezed,
  }) {
    return _then(_LoadFailure(
      boughtFailure == freezed
          ? _value.boughtFailure
          : boughtFailure // ignore: cast_nullable_to_non_nullable
              as BoughtNotFormFailure?,
    ));
  }

  @override
  $BoughtNotFormFailureCopyWith<$Res>? get boughtFailure {
    if (_value.boughtFailure == null) {
      return null;
    }

    return $BoughtNotFormFailureCopyWith<$Res>(_value.boughtFailure!, (value) {
      return _then(_value.copyWith(boughtFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.boughtFailure);

  @override
  final BoughtNotFormFailure? boughtFailure;

  @override
  String toString() {
    return 'ListBoughtInvoiceState.loadFailure(boughtFailure: $boughtFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.boughtFailure, boughtFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(boughtFailure));

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
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)
        loadSuccess,
    required TResult Function(BoughtNotFormFailure? boughtFailure) loadFailure,
  }) {
    return loadFailure(boughtFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(BoughtNotFormFailure? boughtFailure)? loadFailure,
  }) {
    return loadFailure?.call(boughtFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(
            List<BoughtNotForm>? bought,
            bool? watchAfterTenCountIsZeroToNine,
            bool? watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(BoughtNotFormFailure? boughtFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(boughtFailure);
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

abstract class _LoadFailure implements ListBoughtInvoiceState {
  const factory _LoadFailure(BoughtNotFormFailure? boughtFailure) =
      _$_LoadFailure;

  BoughtNotFormFailure? get boughtFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
