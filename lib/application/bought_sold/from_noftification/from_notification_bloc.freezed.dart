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

  _Initialized initialized(Option<BoughtNotForm> afterSelectBoughtOption) {
    return _Initialized(
      afterSelectBoughtOption,
    );
  }

  _From_notification from_notification(
      String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id) {
    return _From_notification(
      sold_and_bought_Id,
      soldInvoice_boughtInvoice_Id,
    );
  }

  _BoughtNotFormReceived boughtNotFormReceived(
      Either<BoughtNotFormFailure, BoughtNotForm>
          failureOrFromNotificationBought) {
    return _BoughtNotFormReceived(
      failureOrFromNotificationBought,
    );
  }

  _Updated updated() {
    return const _Updated();
  }

  _IsApprovedChanged isApprovedChanged(bool isApproved) {
    return _IsApprovedChanged(
      isApproved,
    );
  }
}

/// @nodoc
const $FromNotificationEvent = _$FromNotificationEventTearOff();

/// @nodoc
mixin _$FromNotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)
        initialized,
    required TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)
        from_notification,
    required TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)
        boughtNotFormReceived,
    required TResult Function() updated,
    required TResult Function(bool isApproved) isApprovedChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_From_notification value) from_notification,
    required TResult Function(_BoughtNotFormReceived value)
        boughtNotFormReceived,
    required TResult Function(_Updated value) updated,
    required TResult Function(_IsApprovedChanged value) isApprovedChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
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
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<BoughtNotForm> afterSelectBoughtOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$FromNotificationEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? afterSelectBoughtOption = freezed,
  }) {
    return _then(_Initialized(
      afterSelectBoughtOption == freezed
          ? _value.afterSelectBoughtOption
          : afterSelectBoughtOption // ignore: cast_nullable_to_non_nullable
              as Option<BoughtNotForm>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.afterSelectBoughtOption);

  @override
  final Option<BoughtNotForm> afterSelectBoughtOption;

  @override
  String toString() {
    return 'FromNotificationEvent.initialized(afterSelectBoughtOption: $afterSelectBoughtOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality().equals(
                other.afterSelectBoughtOption, afterSelectBoughtOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(afterSelectBoughtOption));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)
        initialized,
    required TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)
        from_notification,
    required TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)
        boughtNotFormReceived,
    required TResult Function() updated,
    required TResult Function(bool isApproved) isApprovedChanged,
  }) {
    return initialized(afterSelectBoughtOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
  }) {
    return initialized?.call(afterSelectBoughtOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(afterSelectBoughtOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_From_notification value) from_notification,
    required TResult Function(_BoughtNotFormReceived value)
        boughtNotFormReceived,
    required TResult Function(_Updated value) updated,
    required TResult Function(_IsApprovedChanged value) isApprovedChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements FromNotificationEvent {
  const factory _Initialized(Option<BoughtNotForm> afterSelectBoughtOption) =
      _$_Initialized;

  Option<BoughtNotForm> get afterSelectBoughtOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)
        initialized,
    required TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)
        from_notification,
    required TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)
        boughtNotFormReceived,
    required TResult Function() updated,
    required TResult Function(bool isApproved) isApprovedChanged,
  }) {
    return from_notification(sold_and_bought_Id, soldInvoice_boughtInvoice_Id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
  }) {
    return from_notification?.call(
        sold_and_bought_Id, soldInvoice_boughtInvoice_Id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_From_notification value) from_notification,
    required TResult Function(_BoughtNotFormReceived value)
        boughtNotFormReceived,
    required TResult Function(_Updated value) updated,
    required TResult Function(_IsApprovedChanged value) isApprovedChanged,
  }) {
    return from_notification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
  }) {
    return from_notification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
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
      {Either<BoughtNotFormFailure, BoughtNotForm>
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
              as Either<BoughtNotFormFailure, BoughtNotForm>,
    ));
  }
}

/// @nodoc

class _$_BoughtNotFormReceived implements _BoughtNotFormReceived {
  const _$_BoughtNotFormReceived(this.failureOrFromNotificationBought);

  @override
  final Either<BoughtNotFormFailure, BoughtNotForm>
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
    required TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)
        initialized,
    required TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)
        from_notification,
    required TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)
        boughtNotFormReceived,
    required TResult Function() updated,
    required TResult Function(bool isApproved) isApprovedChanged,
  }) {
    return boughtNotFormReceived(failureOrFromNotificationBought);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
  }) {
    return boughtNotFormReceived?.call(failureOrFromNotificationBought);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_From_notification value) from_notification,
    required TResult Function(_BoughtNotFormReceived value)
        boughtNotFormReceived,
    required TResult Function(_Updated value) updated,
    required TResult Function(_IsApprovedChanged value) isApprovedChanged,
  }) {
    return boughtNotFormReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
  }) {
    return boughtNotFormReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
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
      Either<BoughtNotFormFailure, BoughtNotForm>
          failureOrFromNotificationBought) = _$_BoughtNotFormReceived;

  Either<BoughtNotFormFailure, BoughtNotForm>
      get failureOrFromNotificationBought;
  @JsonKey(ignore: true)
  _$BoughtNotFormReceivedCopyWith<_BoughtNotFormReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res>
    extends _$FromNotificationEventCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(_Updated _value, $Res Function(_Updated) _then)
      : super(_value, (v) => _then(v as _Updated));

  @override
  _Updated get _value => super._value as _Updated;
}

/// @nodoc

class _$_Updated implements _Updated {
  const _$_Updated();

  @override
  String toString() {
    return 'FromNotificationEvent.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Updated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)
        initialized,
    required TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)
        from_notification,
    required TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)
        boughtNotFormReceived,
    required TResult Function() updated,
    required TResult Function(bool isApproved) isApprovedChanged,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_From_notification value) from_notification,
    required TResult Function(_BoughtNotFormReceived value)
        boughtNotFormReceived,
    required TResult Function(_Updated value) updated,
    required TResult Function(_IsApprovedChanged value) isApprovedChanged,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements FromNotificationEvent {
  const factory _Updated() = _$_Updated;
}

/// @nodoc
abstract class _$IsApprovedChangedCopyWith<$Res> {
  factory _$IsApprovedChangedCopyWith(
          _IsApprovedChanged value, $Res Function(_IsApprovedChanged) then) =
      __$IsApprovedChangedCopyWithImpl<$Res>;
  $Res call({bool isApproved});
}

/// @nodoc
class __$IsApprovedChangedCopyWithImpl<$Res>
    extends _$FromNotificationEventCopyWithImpl<$Res>
    implements _$IsApprovedChangedCopyWith<$Res> {
  __$IsApprovedChangedCopyWithImpl(
      _IsApprovedChanged _value, $Res Function(_IsApprovedChanged) _then)
      : super(_value, (v) => _then(v as _IsApprovedChanged));

  @override
  _IsApprovedChanged get _value => super._value as _IsApprovedChanged;

  @override
  $Res call({
    Object? isApproved = freezed,
  }) {
    return _then(_IsApprovedChanged(
      isApproved == freezed
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsApprovedChanged implements _IsApprovedChanged {
  const _$_IsApprovedChanged(this.isApproved);

  @override
  final bool isApproved;

  @override
  String toString() {
    return 'FromNotificationEvent.isApprovedChanged(isApproved: $isApproved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsApprovedChanged &&
            const DeepCollectionEquality()
                .equals(other.isApproved, isApproved));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isApproved));

  @JsonKey(ignore: true)
  @override
  _$IsApprovedChangedCopyWith<_IsApprovedChanged> get copyWith =>
      __$IsApprovedChangedCopyWithImpl<_IsApprovedChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)
        initialized,
    required TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)
        from_notification,
    required TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)
        boughtNotFormReceived,
    required TResult Function() updated,
    required TResult Function(bool isApproved) isApprovedChanged,
  }) {
    return isApprovedChanged(isApproved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
  }) {
    return isApprovedChanged?.call(isApproved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(
            String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id)?
        from_notification,
    TResult Function(
            Either<BoughtNotFormFailure, BoughtNotForm>
                failureOrFromNotificationBought)?
        boughtNotFormReceived,
    TResult Function()? updated,
    TResult Function(bool isApproved)? isApprovedChanged,
    required TResult orElse(),
  }) {
    if (isApprovedChanged != null) {
      return isApprovedChanged(isApproved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_From_notification value) from_notification,
    required TResult Function(_BoughtNotFormReceived value)
        boughtNotFormReceived,
    required TResult Function(_Updated value) updated,
    required TResult Function(_IsApprovedChanged value) isApprovedChanged,
  }) {
    return isApprovedChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
  }) {
    return isApprovedChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_From_notification value)? from_notification,
    TResult Function(_BoughtNotFormReceived value)? boughtNotFormReceived,
    TResult Function(_Updated value)? updated,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    required TResult orElse(),
  }) {
    if (isApprovedChanged != null) {
      return isApprovedChanged(this);
    }
    return orElse();
  }
}

abstract class _IsApprovedChanged implements FromNotificationEvent {
  const factory _IsApprovedChanged(bool isApproved) = _$_IsApprovedChanged;

  bool get isApproved;
  @JsonKey(ignore: true)
  _$IsApprovedChangedCopyWith<_IsApprovedChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FromNotificationStateTearOff {
  const _$FromNotificationStateTearOff();

  _FromNotificationState call(
      {BoughtNotForm? bill,
      bool? showErrorMessages,
      bool? navigationWork,
      bool? isEditing,
      bool? isSaving,
      Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
          saveFailureOrSuccessOption}) {
    return _FromNotificationState(
      bill: bill,
      showErrorMessages: showErrorMessages,
      navigationWork: navigationWork,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $FromNotificationState = _$FromNotificationStateTearOff();

/// @nodoc
mixin _$FromNotificationState {
  BoughtNotForm? get bill => throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  bool? get navigationWork => throw _privateConstructorUsedError;
  bool? get isEditing => throw _privateConstructorUsedError;
  bool? get isSaving => throw _privateConstructorUsedError;
  Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
      get saveFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FromNotificationStateCopyWith<FromNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FromNotificationStateCopyWith<$Res> {
  factory $FromNotificationStateCopyWith(FromNotificationState value,
          $Res Function(FromNotificationState) then) =
      _$FromNotificationStateCopyWithImpl<$Res>;
  $Res call(
      {BoughtNotForm? bill,
      bool? showErrorMessages,
      bool? navigationWork,
      bool? isEditing,
      bool? isSaving,
      Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
          saveFailureOrSuccessOption});

  $BoughtNotFormCopyWith<$Res>? get bill;
}

/// @nodoc
class _$FromNotificationStateCopyWithImpl<$Res>
    implements $FromNotificationStateCopyWith<$Res> {
  _$FromNotificationStateCopyWithImpl(this._value, this._then);

  final FromNotificationState _value;
  // ignore: unused_field
  final $Res Function(FromNotificationState) _then;

  @override
  $Res call({
    Object? bill = freezed,
    Object? showErrorMessages = freezed,
    Object? navigationWork = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      bill: bill == freezed
          ? _value.bill
          : bill // ignore: cast_nullable_to_non_nullable
              as BoughtNotForm?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      navigationWork: navigationWork == freezed
          ? _value.navigationWork
          : navigationWork // ignore: cast_nullable_to_non_nullable
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
              as Option<Either<BoughtNotFormFailure, BoughtNotForm>>?,
    ));
  }

  @override
  $BoughtNotFormCopyWith<$Res>? get bill {
    if (_value.bill == null) {
      return null;
    }

    return $BoughtNotFormCopyWith<$Res>(_value.bill!, (value) {
      return _then(_value.copyWith(bill: value));
    });
  }
}

/// @nodoc
abstract class _$FromNotificationStateCopyWith<$Res>
    implements $FromNotificationStateCopyWith<$Res> {
  factory _$FromNotificationStateCopyWith(_FromNotificationState value,
          $Res Function(_FromNotificationState) then) =
      __$FromNotificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BoughtNotForm? bill,
      bool? showErrorMessages,
      bool? navigationWork,
      bool? isEditing,
      bool? isSaving,
      Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
          saveFailureOrSuccessOption});

  @override
  $BoughtNotFormCopyWith<$Res>? get bill;
}

/// @nodoc
class __$FromNotificationStateCopyWithImpl<$Res>
    extends _$FromNotificationStateCopyWithImpl<$Res>
    implements _$FromNotificationStateCopyWith<$Res> {
  __$FromNotificationStateCopyWithImpl(_FromNotificationState _value,
      $Res Function(_FromNotificationState) _then)
      : super(_value, (v) => _then(v as _FromNotificationState));

  @override
  _FromNotificationState get _value => super._value as _FromNotificationState;

  @override
  $Res call({
    Object? bill = freezed,
    Object? showErrorMessages = freezed,
    Object? navigationWork = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_FromNotificationState(
      bill: bill == freezed
          ? _value.bill
          : bill // ignore: cast_nullable_to_non_nullable
              as BoughtNotForm?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      navigationWork: navigationWork == freezed
          ? _value.navigationWork
          : navigationWork // ignore: cast_nullable_to_non_nullable
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
              as Option<Either<BoughtNotFormFailure, BoughtNotForm>>?,
    ));
  }
}

/// @nodoc

class _$_FromNotificationState implements _FromNotificationState {
  const _$_FromNotificationState(
      {this.bill,
      this.showErrorMessages,
      this.navigationWork,
      this.isEditing,
      this.isSaving,
      this.saveFailureOrSuccessOption});

  @override
  final BoughtNotForm? bill;
  @override
  final bool? showErrorMessages;
  @override
  final bool? navigationWork;
  @override
  final bool? isEditing;
  @override
  final bool? isSaving;
  @override
  final Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
      saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'FromNotificationState(bill: $bill, showErrorMessages: $showErrorMessages, navigationWork: $navigationWork, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FromNotificationState &&
            const DeepCollectionEquality().equals(other.bill, bill) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.navigationWork, navigationWork) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bill),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(navigationWork),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$FromNotificationStateCopyWith<_FromNotificationState> get copyWith =>
      __$FromNotificationStateCopyWithImpl<_FromNotificationState>(
          this, _$identity);
}

abstract class _FromNotificationState implements FromNotificationState {
  const factory _FromNotificationState(
      {BoughtNotForm? bill,
      bool? showErrorMessages,
      bool? navigationWork,
      bool? isEditing,
      bool? isSaving,
      Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
          saveFailureOrSuccessOption}) = _$_FromNotificationState;

  @override
  BoughtNotForm? get bill;
  @override
  bool? get showErrorMessages;
  @override
  bool? get navigationWork;
  @override
  bool? get isEditing;
  @override
  bool? get isSaving;
  @override
  Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
      get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$FromNotificationStateCopyWith<_FromNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
