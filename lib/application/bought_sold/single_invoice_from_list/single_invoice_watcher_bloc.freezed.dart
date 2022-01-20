// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_invoice_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleInvoiceWatcherEventTearOff {
  const _$SingleInvoiceWatcherEventTearOff();

  _Initialized initialized(Option<SoldNotForm>? afterSelectSoldOption) {
    return _Initialized(
      afterSelectSoldOption,
    );
  }
}

/// @nodoc
const $SingleInvoiceWatcherEvent = _$SingleInvoiceWatcherEventTearOff();

/// @nodoc
mixin _$SingleInvoiceWatcherEvent {
  Option<SoldNotForm>? get afterSelectSoldOption =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<SoldNotForm>? afterSelectSoldOption)
        initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<SoldNotForm>? afterSelectSoldOption)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<SoldNotForm>? afterSelectSoldOption)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleInvoiceWatcherEventCopyWith<SingleInvoiceWatcherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleInvoiceWatcherEventCopyWith<$Res> {
  factory $SingleInvoiceWatcherEventCopyWith(SingleInvoiceWatcherEvent value,
          $Res Function(SingleInvoiceWatcherEvent) then) =
      _$SingleInvoiceWatcherEventCopyWithImpl<$Res>;
  $Res call({Option<SoldNotForm>? afterSelectSoldOption});
}

/// @nodoc
class _$SingleInvoiceWatcherEventCopyWithImpl<$Res>
    implements $SingleInvoiceWatcherEventCopyWith<$Res> {
  _$SingleInvoiceWatcherEventCopyWithImpl(this._value, this._then);

  final SingleInvoiceWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(SingleInvoiceWatcherEvent) _then;

  @override
  $Res call({
    Object? afterSelectSoldOption = freezed,
  }) {
    return _then(_value.copyWith(
      afterSelectSoldOption: afterSelectSoldOption == freezed
          ? _value.afterSelectSoldOption
          : afterSelectSoldOption // ignore: cast_nullable_to_non_nullable
              as Option<SoldNotForm>?,
    ));
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res>
    implements $SingleInvoiceWatcherEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Option<SoldNotForm>? afterSelectSoldOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$SingleInvoiceWatcherEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? afterSelectSoldOption = freezed,
  }) {
    return _then(_Initialized(
      afterSelectSoldOption == freezed
          ? _value.afterSelectSoldOption
          : afterSelectSoldOption // ignore: cast_nullable_to_non_nullable
              as Option<SoldNotForm>?,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.afterSelectSoldOption);

  @override
  final Option<SoldNotForm>? afterSelectSoldOption;

  @override
  String toString() {
    return 'SingleInvoiceWatcherEvent.initialized(afterSelectSoldOption: $afterSelectSoldOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            const DeepCollectionEquality()
                .equals(other.afterSelectSoldOption, afterSelectSoldOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(afterSelectSoldOption));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<SoldNotForm>? afterSelectSoldOption)
        initialized,
  }) {
    return initialized(afterSelectSoldOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<SoldNotForm>? afterSelectSoldOption)? initialized,
  }) {
    return initialized?.call(afterSelectSoldOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<SoldNotForm>? afterSelectSoldOption)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(afterSelectSoldOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SingleInvoiceWatcherEvent {
  const factory _Initialized(Option<SoldNotForm>? afterSelectSoldOption) =
      _$_Initialized;

  @override
  Option<SoldNotForm>? get afterSelectSoldOption;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SingleInvoiceWatcherStateTearOff {
  const _$SingleInvoiceWatcherStateTearOff();

  _SingleInvoiceWatcherState call(
      {SoldNotForm? bill,
      bool? showErrorMessages,
      bool? navigationWork,
      bool? isEditing,
      bool? isSaving,
      Option<Either<SoldNotFormFailure, Unit>>? saveFailureOrSuccessOption}) {
    return _SingleInvoiceWatcherState(
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
const $SingleInvoiceWatcherState = _$SingleInvoiceWatcherStateTearOff();

/// @nodoc
mixin _$SingleInvoiceWatcherState {
  SoldNotForm? get bill => throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  bool? get navigationWork => throw _privateConstructorUsedError;
  bool? get isEditing => throw _privateConstructorUsedError;
  bool? get isSaving => throw _privateConstructorUsedError;
  Option<Either<SoldNotFormFailure, Unit>>? get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleInvoiceWatcherStateCopyWith<SingleInvoiceWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleInvoiceWatcherStateCopyWith<$Res> {
  factory $SingleInvoiceWatcherStateCopyWith(SingleInvoiceWatcherState value,
          $Res Function(SingleInvoiceWatcherState) then) =
      _$SingleInvoiceWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {SoldNotForm? bill,
      bool? showErrorMessages,
      bool? navigationWork,
      bool? isEditing,
      bool? isSaving,
      Option<Either<SoldNotFormFailure, Unit>>? saveFailureOrSuccessOption});

  $SoldNotFormCopyWith<$Res>? get bill;
}

/// @nodoc
class _$SingleInvoiceWatcherStateCopyWithImpl<$Res>
    implements $SingleInvoiceWatcherStateCopyWith<$Res> {
  _$SingleInvoiceWatcherStateCopyWithImpl(this._value, this._then);

  final SingleInvoiceWatcherState _value;
  // ignore: unused_field
  final $Res Function(SingleInvoiceWatcherState) _then;

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
              as SoldNotForm?,
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
              as Option<Either<SoldNotFormFailure, Unit>>?,
    ));
  }

  @override
  $SoldNotFormCopyWith<$Res>? get bill {
    if (_value.bill == null) {
      return null;
    }

    return $SoldNotFormCopyWith<$Res>(_value.bill!, (value) {
      return _then(_value.copyWith(bill: value));
    });
  }
}

/// @nodoc
abstract class _$SingleInvoiceWatcherStateCopyWith<$Res>
    implements $SingleInvoiceWatcherStateCopyWith<$Res> {
  factory _$SingleInvoiceWatcherStateCopyWith(_SingleInvoiceWatcherState value,
          $Res Function(_SingleInvoiceWatcherState) then) =
      __$SingleInvoiceWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SoldNotForm? bill,
      bool? showErrorMessages,
      bool? navigationWork,
      bool? isEditing,
      bool? isSaving,
      Option<Either<SoldNotFormFailure, Unit>>? saveFailureOrSuccessOption});

  @override
  $SoldNotFormCopyWith<$Res>? get bill;
}

/// @nodoc
class __$SingleInvoiceWatcherStateCopyWithImpl<$Res>
    extends _$SingleInvoiceWatcherStateCopyWithImpl<$Res>
    implements _$SingleInvoiceWatcherStateCopyWith<$Res> {
  __$SingleInvoiceWatcherStateCopyWithImpl(_SingleInvoiceWatcherState _value,
      $Res Function(_SingleInvoiceWatcherState) _then)
      : super(_value, (v) => _then(v as _SingleInvoiceWatcherState));

  @override
  _SingleInvoiceWatcherState get _value =>
      super._value as _SingleInvoiceWatcherState;

  @override
  $Res call({
    Object? bill = freezed,
    Object? showErrorMessages = freezed,
    Object? navigationWork = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_SingleInvoiceWatcherState(
      bill: bill == freezed
          ? _value.bill
          : bill // ignore: cast_nullable_to_non_nullable
              as SoldNotForm?,
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
              as Option<Either<SoldNotFormFailure, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_SingleInvoiceWatcherState implements _SingleInvoiceWatcherState {
  const _$_SingleInvoiceWatcherState(
      {this.bill,
      this.showErrorMessages,
      this.navigationWork,
      this.isEditing,
      this.isSaving,
      this.saveFailureOrSuccessOption});

  @override
  final SoldNotForm? bill;
  @override
  final bool? showErrorMessages;
  @override
  final bool? navigationWork;
  @override
  final bool? isEditing;
  @override
  final bool? isSaving;
  @override
  final Option<Either<SoldNotFormFailure, Unit>>? saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'SingleInvoiceWatcherState(bill: $bill, showErrorMessages: $showErrorMessages, navigationWork: $navigationWork, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleInvoiceWatcherState &&
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
  _$SingleInvoiceWatcherStateCopyWith<_SingleInvoiceWatcherState>
      get copyWith =>
          __$SingleInvoiceWatcherStateCopyWithImpl<_SingleInvoiceWatcherState>(
              this, _$identity);
}

abstract class _SingleInvoiceWatcherState implements SingleInvoiceWatcherState {
  const factory _SingleInvoiceWatcherState(
      {SoldNotForm? bill,
      bool? showErrorMessages,
      bool? navigationWork,
      bool? isEditing,
      bool? isSaving,
      Option<Either<SoldNotFormFailure, Unit>>?
          saveFailureOrSuccessOption}) = _$_SingleInvoiceWatcherState;

  @override
  SoldNotForm? get bill;
  @override
  bool? get showErrorMessages;
  @override
  bool? get navigationWork;
  @override
  bool? get isEditing;
  @override
  bool? get isSaving;
  @override
  Option<Either<SoldNotFormFailure, Unit>>? get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SingleInvoiceWatcherStateCopyWith<_SingleInvoiceWatcherState>
      get copyWith => throw _privateConstructorUsedError;
}
