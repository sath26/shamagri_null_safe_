// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'from_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FromNotificationEventTearOff {
  const _$FromNotificationEventTearOff();

  _From_notification from_notification(
      String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id) {
    return _From_notification(
      sold_and_bought_Id,
      soldInvoice_boughtInvoice_Id,
    );
  }

  _BoughtNotFormReceived boughtNotFormReceived(
      Either<BoughtNotFormFailure, List<BoughtNotForm>>
          failureOrFromNotificationBought) {
    return _BoughtNotFormReceived(
      failureOrFromNotificationBought,
    );
  }
}

/// @nodoc
const $FromNotificationEvent = _$FromNotificationEventTearOff();

/// @nodoc
mixin _$FromNotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)
        from_notification,
    required TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>
                failureOrFromNotificationBought)
        boughtNotFormReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_From_notification value) from_notification,
    required TResult Function(_BoughtNotFormReceived value)
        boughtNotFormReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FromNotificationEventCopyWith<$Res> {
  factory $FromNotificationEventCopyWith(FromNotificationEvent value,
          $Res Function(FromNotificationEvent) then) =
      _$FromNotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FromNotificationEventCopyWithImpl<$Res>
    implements $FromNotificationEventCopyWith<$Res> {
  _$FromNotificationEventCopyWithImpl(this._value, this._then);

  final FromNotificationEvent _value;
  // ignore: unused_field
  final $Res Function(FromNotificationEvent) _then;
}

/// @nodoc
abstract class _$From_notificationCopyWith<$Res> {
  factory _$From_notificationCopyWith(
          _From_notification value, $Res Function(_From_notification) then) =
      __$From_notificationCopyWithImpl<$Res>;
  $Res call({String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id});
}

/// @nodoc
class __$From_notificationCopyWithImpl<$Res>
    extends _$FromNotificationEventCopyWithImpl<$Res>
    implements _$From_notificationCopyWith<$Res> {
  __$From_notificationCopyWithImpl(
      _From_notification _value, $Res Function(_From_notification) _then)
      : super(_value, (v) => _then(v as _From_notification));

  @override
  _From_notification get _value => super._value as _From_notification;

  @override
  $Res call({
    Object? sold_and_bought_Id = freezed,
    Object? soldInvoice_boughtInvoice_Id = freezed,
  }) {
    return _then(_From_notification(
      sold_and_bought_Id == freezed
          ? _value.sold_and_bought_Id
          : sold_and_bought_Id // ignore: cast_nullable_to_non_nullable
              as String,
      soldInvoice_boughtInvoice_Id == freezed
          ? _value.soldInvoice_boughtInvoice_Id
          : soldInvoice_boughtInvoice_Id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_From_notification implements _From_notification {
  const _$_From_notification(
      this.sold_and_bought_Id, this.soldInvoice_boughtInvoice_Id);

  @override
  final String sold_and_bought_Id;
  @override
  final String soldInvoice_boughtInvoice_Id;

  @override
  String toString() {
    return 'FromNotificationEvent.from_notification(sold_and_bought_Id: $sold_and_bought_Id, soldInvoice_boughtInvoice_Id: $soldInvoice_boughtInvoice_Id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _From_notification &&
            const DeepCollectionEquality()
                .equals(other.sold_and_bought_Id, sold_and_bought_Id) &&
            const DeepCollectionEquality().equals(
                other.soldInvoice_boughtInvoice_Id,
                soldInvoice_boughtInvoice_Id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sold_and_bought_Id),
      const DeepCollectionEquality().hash(soldInvoice_boughtInvoice_Id));

  @JsonKey(ignore: true)
  @override
  _$From_notificationCopyWith<_From_notification> get copyWith =>
      __$From_notificationCopyWithImpl<_From_notification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)
        from_notification,
    required TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>
                failureOrFromNotificationBought)
        boughtNotFormReceived,
  }) {
    return from_notification(sold_and_bought_Id, soldInvoice_boughtInvoice_Id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
  }) {
    return from_notification?.call(
        sold_and_bought_Id, soldInvoice_boughtInvoice_Id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    required TResult orElse(),
  }) {
    if (from_notification != null) {
      return from_notification(
          sold_and_bought_Id, soldInvoice_boughtInvoice_Id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_From_notification value) from_notification,
    required TResult Function(_BoughtNotFormReceived value)
        boughtNotFormReceived,
  }) {
    return from_notification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
  }) {
    return from_notification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    required TResult orElse(),
  }) {
    if (from_notification != null) {
      return from_notification(this);
    }
    return orElse();
  }
}

abstract class _From_notification implements FromNotificationEvent {
  const factory _From_notification(
          String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id) =
      _$_From_notification;

  String get sold_and_bought_Id;
  String get soldInvoice_boughtInvoice_Id;
  @JsonKey(ignore: true)
  _$From_notificationCopyWith<_From_notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BoughtNotFormReceivedCopyWith<$Res> {
  factory _$BoughtNotFormReceivedCopyWith(_BoughtNotFormReceived value,
          $Res Function(_BoughtNotFormReceived) then) =
      __$BoughtNotFormReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<BoughtNotFormFailure, List<BoughtNotForm>>
          failureOrFromNotificationBought});
}

/// @nodoc
class __$BoughtNotFormReceivedCopyWithImpl<$Res>
    extends _$FromNotificationEventCopyWithImpl<$Res>
    implements _$BoughtNotFormReceivedCopyWith<$Res> {
  __$BoughtNotFormReceivedCopyWithImpl(_BoughtNotFormReceived _value,
      $Res Function(_BoughtNotFormReceived) _then)
      : super(_value, (v) => _then(v as _BoughtNotFormReceived));

  @override
  _BoughtNotFormReceived get _value => super._value as _BoughtNotFormReceived;

  @override
  $Res call({
    Object? failureOrFromNotificationBought = freezed,
  }) {
    return _then(_BoughtNotFormReceived(
      failureOrFromNotificationBought == freezed
          ? _value.failureOrFromNotificationBought
          : failureOrFromNotificationBought // ignore: cast_nullable_to_non_nullable
              as Either<BoughtNotFormFailure, List<BoughtNotForm>>,
    ));
  }
}

/// @nodoc

class _$_BoughtNotFormReceived implements _BoughtNotFormReceived {
  const _$_BoughtNotFormReceived(this.failureOrFromNotificationBought);

  @override
  final Either<BoughtNotFormFailure, List<BoughtNotForm>>
      failureOrFromNotificationBought;

  @override
  String toString() {
    return 'FromNotificationEvent.boughtNotFormReceived(failureOrFromNotificationBought: $failureOrFromNotificationBought)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BoughtNotFormReceived &&
            const DeepCollectionEquality().equals(
                other.failureOrFromNotificationBought,
                failureOrFromNotificationBought));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(failureOrFromNotificationBought));

  @JsonKey(ignore: true)
  @override
  _$BoughtNotFormReceivedCopyWith<_BoughtNotFormReceived> get copyWith =>
      __$BoughtNotFormReceivedCopyWithImpl<_BoughtNotFormReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)
        from_notification,
    required TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>
                failureOrFromNotificationBought)
        boughtNotFormReceived,
  }) {
    return boughtNotFormReceived(failureOrFromNotificationBought);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
  }) {
    return boughtNotFormReceived?.call(failureOrFromNotificationBought);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, List<BoughtNotForm>>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    required TResult orElse(),
  }) {
    if (boughtNotFormReceived != null) {
      return boughtNotFormReceived(failureOrFromNotificationBought);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_From_notification value) from_notification,
    required TResult Function(_BoughtNotFormReceived value)
        boughtNotFormReceived,
  }) {
    return boughtNotFormReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
  }) {
    return boughtNotFormReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    required TResult orElse(),
  }) {
    if (boughtNotFormReceived != null) {
      return boughtNotFormReceived(this);
    }
    return orElse();
  }
}

abstract class _BoughtNotFormReceived implements FromNotificationEvent {
  const factory _BoughtNotFormReceived(
      Either<BoughtNotFormFailure, List<BoughtNotForm>>
          failureOrFromNotificationBought) = _$_BoughtNotFormReceived;

  Either<BoughtNotFormFailure, List<BoughtNotForm>>
      get failureOrFromNotificationBought;
  @JsonKey(ignore: true)
  _$BoughtNotFormReceivedCopyWith<_BoughtNotFormReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FromNotificationStateTearOff {
  const _$FromNotificationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<BoughtNotForm> fromNotificationBought) {
    return _LoadSuccess(
      fromNotificationBought,
    );
  }

  _LoadFailure loadFailure(BoughtNotFormFailure fromNotificationBoughtFailure) {
    return _LoadFailure(
      fromNotificationBoughtFailure,
    );
  }
}

/// @nodoc
const $FromNotificationState = _$FromNotificationStateTearOff();

/// @nodoc
mixin _$FromNotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<BoughtNotForm> fromNotificationBought)
        loadSuccess,
    required TResult Function(
            BoughtNotFormFailure fromNotificationBoughtFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BoughtNotForm> fromNotificationBought)? loadSuccess,
    TResult Function(BoughtNotFormFailure fromNotificationBoughtFailure)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BoughtNotForm> fromNotificationBought)? loadSuccess,
    TResult Function(BoughtNotFormFailure fromNotificationBoughtFailure)?
        loadFailure,
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
abstract class $FromNotificationStateCopyWith<$Res> {
  factory $FromNotificationStateCopyWith(FromNotificationState value,
          $Res Function(FromNotificationState) then) =
      _$FromNotificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FromNotificationStateCopyWithImpl<$Res>
    implements $FromNotificationStateCopyWith<$Res> {
  _$FromNotificationStateCopyWithImpl(this._value, this._then);

  final FromNotificationState _value;
  // ignore: unused_field
  final $Res Function(FromNotificationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FromNotificationStateCopyWithImpl<$Res>
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
    return 'FromNotificationState.initial()';
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
    required TResult Function(List<BoughtNotForm> fromNotificationBought)
        loadSuccess,
    required TResult Function(
            BoughtNotFormFailure fromNotificationBoughtFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BoughtNotForm> fromNotificationBought)? loadSuccess,
    TResult Function(BoughtNotFormFailure fromNotificationBoughtFailure)?
        loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BoughtNotForm> fromNotificationBought)? loadSuccess,
    TResult Function(BoughtNotFormFailure fromNotificationBoughtFailure)?
        loadFailure,
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

abstract class _Initial implements FromNotificationState {
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
    extends _$FromNotificationStateCopyWithImpl<$Res>
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
    return 'FromNotificationState.loadInProgress()';
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
    required TResult Function(List<BoughtNotForm> fromNotificationBought)
        loadSuccess,
    required TResult Function(
            BoughtNotFormFailure fromNotificationBoughtFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BoughtNotForm> fromNotificationBought)? loadSuccess,
    TResult Function(BoughtNotFormFailure fromNotificationBoughtFailure)?
        loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BoughtNotForm> fromNotificationBought)? loadSuccess,
    TResult Function(BoughtNotFormFailure fromNotificationBoughtFailure)?
        loadFailure,
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

abstract class _LoadInProgress implements FromNotificationState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<BoughtNotForm> fromNotificationBought});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$FromNotificationStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? fromNotificationBought = freezed,
  }) {
    return _then(_LoadSuccess(
      fromNotificationBought == freezed
          ? _value.fromNotificationBought
          : fromNotificationBought // ignore: cast_nullable_to_non_nullable
              as List<BoughtNotForm>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.fromNotificationBought);

  @override
  final List<BoughtNotForm> fromNotificationBought;

  @override
  String toString() {
    return 'FromNotificationState.loadSuccess(fromNotificationBought: $fromNotificationBought)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.fromNotificationBought, fromNotificationBought));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(fromNotificationBought));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<BoughtNotForm> fromNotificationBought)
        loadSuccess,
    required TResult Function(
            BoughtNotFormFailure fromNotificationBoughtFailure)
        loadFailure,
  }) {
    return loadSuccess(fromNotificationBought);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BoughtNotForm> fromNotificationBought)? loadSuccess,
    TResult Function(BoughtNotFormFailure fromNotificationBoughtFailure)?
        loadFailure,
  }) {
    return loadSuccess?.call(fromNotificationBought);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BoughtNotForm> fromNotificationBought)? loadSuccess,
    TResult Function(BoughtNotFormFailure fromNotificationBoughtFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(fromNotificationBought);
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

abstract class _LoadSuccess implements FromNotificationState {
  const factory _LoadSuccess(List<BoughtNotForm> fromNotificationBought) =
      _$_LoadSuccess;

  List<BoughtNotForm> get fromNotificationBought;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({BoughtNotFormFailure fromNotificationBoughtFailure});

  $BoughtNotFormFailureCopyWith<$Res> get fromNotificationBoughtFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$FromNotificationStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? fromNotificationBoughtFailure = freezed,
  }) {
    return _then(_LoadFailure(
      fromNotificationBoughtFailure == freezed
          ? _value.fromNotificationBoughtFailure
          : fromNotificationBoughtFailure // ignore: cast_nullable_to_non_nullable
              as BoughtNotFormFailure,
    ));
  }

  @override
  $BoughtNotFormFailureCopyWith<$Res> get fromNotificationBoughtFailure {
    return $BoughtNotFormFailureCopyWith<$Res>(
        _value.fromNotificationBoughtFailure, (value) {
      return _then(_value.copyWith(fromNotificationBoughtFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.fromNotificationBoughtFailure);

  @override
  final BoughtNotFormFailure fromNotificationBoughtFailure;

  @override
  String toString() {
    return 'FromNotificationState.loadFailure(fromNotificationBoughtFailure: $fromNotificationBoughtFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality().equals(
                other.fromNotificationBoughtFailure,
                fromNotificationBoughtFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(fromNotificationBoughtFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<BoughtNotForm> fromNotificationBought)
        loadSuccess,
    required TResult Function(
            BoughtNotFormFailure fromNotificationBoughtFailure)
        loadFailure,
  }) {
    return loadFailure(fromNotificationBoughtFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BoughtNotForm> fromNotificationBought)? loadSuccess,
    TResult Function(BoughtNotFormFailure fromNotificationBoughtFailure)?
        loadFailure,
  }) {
    return loadFailure?.call(fromNotificationBoughtFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<BoughtNotForm> fromNotificationBought)? loadSuccess,
    TResult Function(BoughtNotFormFailure fromNotificationBoughtFailure)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(fromNotificationBoughtFailure);
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

abstract class _LoadFailure implements FromNotificationState {
  const factory _LoadFailure(
      BoughtNotFormFailure fromNotificationBoughtFailure) = _$_LoadFailure;

  BoughtNotFormFailure get fromNotificationBoughtFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
