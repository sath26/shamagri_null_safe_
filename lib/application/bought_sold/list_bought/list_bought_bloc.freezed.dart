// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_bought_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListBoughtEventTearOff {
  const _$ListBoughtEventTearOff();

  _WatchFirstTen watchFirstTen() {
    return const _WatchFirstTen();
  }

  _WatchAfterTen watchAfterTen() {
    return const _WatchAfterTen();
  }

  _ListBoughtReceived listBoughtReceived(
      Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
      {bool? afterTenCountIsZero,
      bool? firstTenCountIsZero}) {
    return _ListBoughtReceived(
      failureOrListBought,
      afterTenCountIsZero: afterTenCountIsZero,
      firstTenCountIsZero: firstTenCountIsZero,
    );
  }
}

/// @nodoc
const $ListBoughtEvent = _$ListBoughtEventTearOff();

/// @nodoc
mixin _$ListBoughtEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
            bool? firstTenCountIsZero)
        listBoughtReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
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
abstract class $ListBoughtEventCopyWith<$Res> {
  factory $ListBoughtEventCopyWith(
          ListBoughtEvent value, $Res Function(ListBoughtEvent) then) =
      _$ListBoughtEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListBoughtEventCopyWithImpl<$Res>
    implements $ListBoughtEventCopyWith<$Res> {
  _$ListBoughtEventCopyWithImpl(this._value, this._then);

  final ListBoughtEvent _value;
  // ignore: unused_field
  final $Res Function(ListBoughtEvent) _then;
}

/// @nodoc
abstract class _$WatchFirstTenCopyWith<$Res> {
  factory _$WatchFirstTenCopyWith(
          _WatchFirstTen value, $Res Function(_WatchFirstTen) then) =
      __$WatchFirstTenCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchFirstTenCopyWithImpl<$Res>
    extends _$ListBoughtEventCopyWithImpl<$Res>
    implements _$WatchFirstTenCopyWith<$Res> {
  __$WatchFirstTenCopyWithImpl(
      _WatchFirstTen _value, $Res Function(_WatchFirstTen) _then)
      : super(_value, (v) => _then(v as _WatchFirstTen));

  @override
  _WatchFirstTen get _value => super._value as _WatchFirstTen;
}

/// @nodoc

class _$_WatchFirstTen implements _WatchFirstTen {
  const _$_WatchFirstTen();

  @override
  String toString() {
    return 'ListBoughtEvent.watchFirstTen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchFirstTen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
            bool? firstTenCountIsZero)
        listBoughtReceived,
  }) {
    return watchFirstTen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
  }) {
    return watchFirstTen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
    required TResult orElse(),
  }) {
    if (watchFirstTen != null) {
      return watchFirstTen();
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

abstract class _WatchFirstTen implements ListBoughtEvent {
  const factory _WatchFirstTen() = _$_WatchFirstTen;
}

/// @nodoc
abstract class _$WatchAfterTenCopyWith<$Res> {
  factory _$WatchAfterTenCopyWith(
          _WatchAfterTen value, $Res Function(_WatchAfterTen) then) =
      __$WatchAfterTenCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAfterTenCopyWithImpl<$Res>
    extends _$ListBoughtEventCopyWithImpl<$Res>
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
    return 'ListBoughtEvent.watchAfterTen()';
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
    required TResult Function() watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
            bool? firstTenCountIsZero)
        listBoughtReceived,
  }) {
    return watchAfterTen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
  }) {
    return watchAfterTen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
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

abstract class _WatchAfterTen implements ListBoughtEvent {
  const factory _WatchAfterTen() = _$_WatchAfterTen;
}

/// @nodoc
abstract class _$ListBoughtReceivedCopyWith<$Res> {
  factory _$ListBoughtReceivedCopyWith(
          _ListBoughtReceived value, $Res Function(_ListBoughtReceived) then) =
      __$ListBoughtReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
      bool? afterTenCountIsZero,
      bool? firstTenCountIsZero});
}

/// @nodoc
class __$ListBoughtReceivedCopyWithImpl<$Res>
    extends _$ListBoughtEventCopyWithImpl<$Res>
    implements _$ListBoughtReceivedCopyWith<$Res> {
  __$ListBoughtReceivedCopyWithImpl(
      _ListBoughtReceived _value, $Res Function(_ListBoughtReceived) _then)
      : super(_value, (v) => _then(v as _ListBoughtReceived));

  @override
  _ListBoughtReceived get _value => super._value as _ListBoughtReceived;

  @override
  $Res call({
    Object? failureOrListBought = freezed,
    Object? afterTenCountIsZero = freezed,
    Object? firstTenCountIsZero = freezed,
  }) {
    return _then(_ListBoughtReceived(
      failureOrListBought == freezed
          ? _value.failureOrListBought
          : failureOrListBought // ignore: cast_nullable_to_non_nullable
              as Either<ListBoughtFailure, List<ListBought>>?,
      afterTenCountIsZero: afterTenCountIsZero == freezed
          ? _value.afterTenCountIsZero
          : afterTenCountIsZero // ignore: cast_nullable_to_non_nullable
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
  const _$_ListBoughtReceived(this.failureOrListBought,
      {this.afterTenCountIsZero, this.firstTenCountIsZero});

  @override
  final Either<ListBoughtFailure, List<ListBought>>? failureOrListBought;
  @override
  final bool? afterTenCountIsZero;
  @override
  final bool? firstTenCountIsZero;

  @override
  String toString() {
    return 'ListBoughtEvent.listBoughtReceived(failureOrListBought: $failureOrListBought, afterTenCountIsZero: $afterTenCountIsZero, firstTenCountIsZero: $firstTenCountIsZero)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListBoughtReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrListBought, failureOrListBought) &&
            const DeepCollectionEquality()
                .equals(other.afterTenCountIsZero, afterTenCountIsZero) &&
            const DeepCollectionEquality()
                .equals(other.firstTenCountIsZero, firstTenCountIsZero));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrListBought),
      const DeepCollectionEquality().hash(afterTenCountIsZero),
      const DeepCollectionEquality().hash(firstTenCountIsZero));

  @JsonKey(ignore: true)
  @override
  _$ListBoughtReceivedCopyWith<_ListBoughtReceived> get copyWith =>
      __$ListBoughtReceivedCopyWithImpl<_ListBoughtReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchFirstTen,
    required TResult Function() watchAfterTen,
    required TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
            bool? firstTenCountIsZero)
        listBoughtReceived,
  }) {
    return listBoughtReceived(
        failureOrListBought, afterTenCountIsZero, firstTenCountIsZero);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
  }) {
    return listBoughtReceived?.call(
        failureOrListBought, afterTenCountIsZero, firstTenCountIsZero);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchFirstTen,
    TResult Function()? watchAfterTen,
    TResult Function(
            Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
            bool? afterTenCountIsZero,
            bool? firstTenCountIsZero)?
        listBoughtReceived,
    required TResult orElse(),
  }) {
    if (listBoughtReceived != null) {
      return listBoughtReceived(
          failureOrListBought, afterTenCountIsZero, firstTenCountIsZero);
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

abstract class _ListBoughtReceived implements ListBoughtEvent {
  const factory _ListBoughtReceived(
      Either<ListBoughtFailure, List<ListBought>>? failureOrListBought,
      {bool? afterTenCountIsZero,
      bool? firstTenCountIsZero}) = _$_ListBoughtReceived;

  Either<ListBoughtFailure, List<ListBought>>? get failureOrListBought;
  bool? get afterTenCountIsZero;
  bool? get firstTenCountIsZero;
  @JsonKey(ignore: true)
  _$ListBoughtReceivedCopyWith<_ListBoughtReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListBoughtStateTearOff {
  const _$ListBoughtStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<ListBought> listBought,
      {dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero}) {
    return _LoadSuccess(
      listBought,
      watchAfterTenCountIsZero: watchAfterTenCountIsZero,
      watchFirstTenCountIsZero: watchFirstTenCountIsZero,
    );
  }

  _LoadFailure loadFailure(ListBoughtFailure listBoughtFailure) {
    return _LoadFailure(
      listBoughtFailure,
    );
  }
}

/// @nodoc
const $ListBoughtState = _$ListBoughtStateTearOff();

/// @nodoc
mixin _$ListBoughtState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)
        loadSuccess,
    required TResult Function(ListBoughtFailure listBoughtFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(ListBoughtFailure listBoughtFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(ListBoughtFailure listBoughtFailure)? loadFailure,
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
abstract class $ListBoughtStateCopyWith<$Res> {
  factory $ListBoughtStateCopyWith(
          ListBoughtState value, $Res Function(ListBoughtState) then) =
      _$ListBoughtStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListBoughtStateCopyWithImpl<$Res>
    implements $ListBoughtStateCopyWith<$Res> {
  _$ListBoughtStateCopyWithImpl(this._value, this._then);

  final ListBoughtState _value;
  // ignore: unused_field
  final $Res Function(ListBoughtState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ListBoughtStateCopyWithImpl<$Res>
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
    return 'ListBoughtState.initial()';
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
    required TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)
        loadSuccess,
    required TResult Function(ListBoughtFailure listBoughtFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(ListBoughtFailure listBoughtFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(ListBoughtFailure listBoughtFailure)? loadFailure,
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

abstract class _Initial implements ListBoughtState {
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
    extends _$ListBoughtStateCopyWithImpl<$Res>
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
    return 'ListBoughtState.loadInProgress()';
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
    required TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)
        loadSuccess,
    required TResult Function(ListBoughtFailure listBoughtFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(ListBoughtFailure listBoughtFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(ListBoughtFailure listBoughtFailure)? loadFailure,
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

abstract class _LoadInProgress implements ListBoughtState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {List<ListBought> listBought,
      dynamic watchAfterTenCountIsZero,
      dynamic watchFirstTenCountIsZero});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ListBoughtStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? listBought = freezed,
    Object? watchAfterTenCountIsZero = freezed,
    Object? watchFirstTenCountIsZero = freezed,
  }) {
    return _then(_LoadSuccess(
      listBought == freezed
          ? _value.listBought
          : listBought // ignore: cast_nullable_to_non_nullable
              as List<ListBought>,
      watchAfterTenCountIsZero: watchAfterTenCountIsZero == freezed
          ? _value.watchAfterTenCountIsZero
          : watchAfterTenCountIsZero,
      watchFirstTenCountIsZero: watchFirstTenCountIsZero == freezed
          ? _value.watchFirstTenCountIsZero
          : watchFirstTenCountIsZero,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.listBought,
      {this.watchAfterTenCountIsZero, this.watchFirstTenCountIsZero});

  @override
  final List<ListBought> listBought;
  @override
  final dynamic watchAfterTenCountIsZero;
  @override
  final dynamic watchFirstTenCountIsZero;

  @override
  String toString() {
    return 'ListBoughtState.loadSuccess(listBought: $listBought, watchAfterTenCountIsZero: $watchAfterTenCountIsZero, watchFirstTenCountIsZero: $watchFirstTenCountIsZero)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.listBought, listBought) &&
            const DeepCollectionEquality().equals(
                other.watchAfterTenCountIsZero, watchAfterTenCountIsZero) &&
            const DeepCollectionEquality().equals(
                other.watchFirstTenCountIsZero, watchFirstTenCountIsZero));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(listBought),
      const DeepCollectionEquality().hash(watchAfterTenCountIsZero),
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
    required TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)
        loadSuccess,
    required TResult Function(ListBoughtFailure listBoughtFailure) loadFailure,
  }) {
    return loadSuccess(
        listBought, watchAfterTenCountIsZero, watchFirstTenCountIsZero);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(ListBoughtFailure listBoughtFailure)? loadFailure,
  }) {
    return loadSuccess?.call(
        listBought, watchAfterTenCountIsZero, watchFirstTenCountIsZero);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(ListBoughtFailure listBoughtFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(
          listBought, watchAfterTenCountIsZero, watchFirstTenCountIsZero);
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

abstract class _LoadSuccess implements ListBoughtState {
  const factory _LoadSuccess(List<ListBought> listBought,
      {dynamic watchAfterTenCountIsZero,
      dynamic watchFirstTenCountIsZero}) = _$_LoadSuccess;

  List<ListBought> get listBought;
  dynamic get watchAfterTenCountIsZero;
  dynamic get watchFirstTenCountIsZero;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ListBoughtFailure listBoughtFailure});

  $ListBoughtFailureCopyWith<$Res> get listBoughtFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ListBoughtStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? listBoughtFailure = freezed,
  }) {
    return _then(_LoadFailure(
      listBoughtFailure == freezed
          ? _value.listBoughtFailure
          : listBoughtFailure // ignore: cast_nullable_to_non_nullable
              as ListBoughtFailure,
    ));
  }

  @override
  $ListBoughtFailureCopyWith<$Res> get listBoughtFailure {
    return $ListBoughtFailureCopyWith<$Res>(_value.listBoughtFailure, (value) {
      return _then(_value.copyWith(listBoughtFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.listBoughtFailure);

  @override
  final ListBoughtFailure listBoughtFailure;

  @override
  String toString() {
    return 'ListBoughtState.loadFailure(listBoughtFailure: $listBoughtFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.listBoughtFailure, listBoughtFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(listBoughtFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)
        loadSuccess,
    required TResult Function(ListBoughtFailure listBoughtFailure) loadFailure,
  }) {
    return loadFailure(listBoughtFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(ListBoughtFailure listBoughtFailure)? loadFailure,
  }) {
    return loadFailure?.call(listBoughtFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<ListBought> listBought,
            dynamic watchAfterTenCountIsZero, dynamic watchFirstTenCountIsZero)?
        loadSuccess,
    TResult Function(ListBoughtFailure listBoughtFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(listBoughtFailure);
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

abstract class _LoadFailure implements ListBoughtState {
  const factory _LoadFailure(ListBoughtFailure listBoughtFailure) =
      _$_LoadFailure;

  ListBoughtFailure get listBoughtFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
