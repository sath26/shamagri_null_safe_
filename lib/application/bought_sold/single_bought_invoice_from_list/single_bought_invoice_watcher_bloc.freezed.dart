// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_bought_invoice_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleBoughtInvoiceWatcherEventTearOff {
  const _$SingleBoughtInvoiceWatcherEventTearOff();

  _Initialized initialized(Option<BoughtNotForm> afterSelectBoughtOption) {
    return _Initialized(
      afterSelectBoughtOption,
    );
  }

  _IsApprovedChanged isApprovedChanged(bool isApproved) {
    return _IsApprovedChanged(
      isApproved,
    );
  }

  _Updated updated() {
    return const _Updated();
  }
}

/// @nodoc
const $SingleBoughtInvoiceWatcherEvent =
    _$SingleBoughtInvoiceWatcherEventTearOff();

/// @nodoc
mixin _$SingleBoughtInvoiceWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)
        initialized,
    required TResult Function(bool isApproved) isApprovedChanged,
    required TResult Function() updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(bool isApproved)? isApprovedChanged,
    TResult Function()? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(bool isApproved)? isApprovedChanged,
    TResult Function()? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_IsApprovedChanged value) isApprovedChanged,
    required TResult Function(_Updated value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    TResult Function(_Updated value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleBoughtInvoiceWatcherEventCopyWith<$Res> {
  factory $SingleBoughtInvoiceWatcherEventCopyWith(
          SingleBoughtInvoiceWatcherEvent value,
          $Res Function(SingleBoughtInvoiceWatcherEvent) then) =
      _$SingleBoughtInvoiceWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SingleBoughtInvoiceWatcherEventCopyWithImpl<$Res>
    implements $SingleBoughtInvoiceWatcherEventCopyWith<$Res> {
  _$SingleBoughtInvoiceWatcherEventCopyWithImpl(this._value, this._then);

  final SingleBoughtInvoiceWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(SingleBoughtInvoiceWatcherEvent) _then;
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
    extends _$SingleBoughtInvoiceWatcherEventCopyWithImpl<$Res>
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
    return 'SingleBoughtInvoiceWatcherEvent.initialized(afterSelectBoughtOption: $afterSelectBoughtOption)';
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
    required TResult Function(bool isApproved) isApprovedChanged,
    required TResult Function() updated,
  }) {
    return initialized(afterSelectBoughtOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(bool isApproved)? isApprovedChanged,
    TResult Function()? updated,
  }) {
    return initialized?.call(afterSelectBoughtOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(bool isApproved)? isApprovedChanged,
    TResult Function()? updated,
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
    required TResult Function(_IsApprovedChanged value) isApprovedChanged,
    required TResult Function(_Updated value) updated,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    TResult Function(_Updated value)? updated,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SingleBoughtInvoiceWatcherEvent {
  const factory _Initialized(Option<BoughtNotForm> afterSelectBoughtOption) =
      _$_Initialized;

  Option<BoughtNotForm> get afterSelectBoughtOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$SingleBoughtInvoiceWatcherEventCopyWithImpl<$Res>
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
    return 'SingleBoughtInvoiceWatcherEvent.isApprovedChanged(isApproved: $isApproved)';
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
    required TResult Function(bool isApproved) isApprovedChanged,
    required TResult Function() updated,
  }) {
    return isApprovedChanged(isApproved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(bool isApproved)? isApprovedChanged,
    TResult Function()? updated,
  }) {
    return isApprovedChanged?.call(isApproved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(bool isApproved)? isApprovedChanged,
    TResult Function()? updated,
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
    required TResult Function(_IsApprovedChanged value) isApprovedChanged,
    required TResult Function(_Updated value) updated,
  }) {
    return isApprovedChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    TResult Function(_Updated value)? updated,
  }) {
    return isApprovedChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (isApprovedChanged != null) {
      return isApprovedChanged(this);
    }
    return orElse();
  }
}

abstract class _IsApprovedChanged implements SingleBoughtInvoiceWatcherEvent {
  const factory _IsApprovedChanged(bool isApproved) = _$_IsApprovedChanged;

  bool get isApproved;
  @JsonKey(ignore: true)
  _$IsApprovedChangedCopyWith<_IsApprovedChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res>
    extends _$SingleBoughtInvoiceWatcherEventCopyWithImpl<$Res>
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
    return 'SingleBoughtInvoiceWatcherEvent.updated()';
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
    required TResult Function(bool isApproved) isApprovedChanged,
    required TResult Function() updated,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(bool isApproved)? isApprovedChanged,
    TResult Function()? updated,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<BoughtNotForm> afterSelectBoughtOption)?
        initialized,
    TResult Function(bool isApproved)? isApprovedChanged,
    TResult Function()? updated,
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
    required TResult Function(_IsApprovedChanged value) isApprovedChanged,
    required TResult Function(_Updated value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    TResult Function(_Updated value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_IsApprovedChanged value)? isApprovedChanged,
    TResult Function(_Updated value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements SingleBoughtInvoiceWatcherEvent {
  const factory _Updated() = _$_Updated;
}

/// @nodoc
class _$SingleBoughtInvoiceWatcherStateTearOff {
  const _$SingleBoughtInvoiceWatcherStateTearOff();

  _SingleBoughtInvoiceWatcherState call(
      {BoughtNotForm? bill,
      bool? showErrorMessages,
      bool? navigationWork,
      bool? isEditing,
      bool? isSaving,
      Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
          saveFailureOrSuccessOption}) {
    return _SingleBoughtInvoiceWatcherState(
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
const $SingleBoughtInvoiceWatcherState =
    _$SingleBoughtInvoiceWatcherStateTearOff();

/// @nodoc
mixin _$SingleBoughtInvoiceWatcherState {
  BoughtNotForm? get bill => throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  bool? get navigationWork => throw _privateConstructorUsedError;
  bool? get isEditing => throw _privateConstructorUsedError;
  bool? get isSaving => throw _privateConstructorUsedError;
  Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
      get saveFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleBoughtInvoiceWatcherStateCopyWith<SingleBoughtInvoiceWatcherState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleBoughtInvoiceWatcherStateCopyWith<$Res> {
  factory $SingleBoughtInvoiceWatcherStateCopyWith(
          SingleBoughtInvoiceWatcherState value,
          $Res Function(SingleBoughtInvoiceWatcherState) then) =
      _$SingleBoughtInvoiceWatcherStateCopyWithImpl<$Res>;
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
class _$SingleBoughtInvoiceWatcherStateCopyWithImpl<$Res>
    implements $SingleBoughtInvoiceWatcherStateCopyWith<$Res> {
  _$SingleBoughtInvoiceWatcherStateCopyWithImpl(this._value, this._then);

  final SingleBoughtInvoiceWatcherState _value;
  // ignore: unused_field
  final $Res Function(SingleBoughtInvoiceWatcherState) _then;

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
abstract class _$SingleBoughtInvoiceWatcherStateCopyWith<$Res>
    implements $SingleBoughtInvoiceWatcherStateCopyWith<$Res> {
  factory _$SingleBoughtInvoiceWatcherStateCopyWith(
          _SingleBoughtInvoiceWatcherState value,
          $Res Function(_SingleBoughtInvoiceWatcherState) then) =
      __$SingleBoughtInvoiceWatcherStateCopyWithImpl<$Res>;
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
class __$SingleBoughtInvoiceWatcherStateCopyWithImpl<$Res>
    extends _$SingleBoughtInvoiceWatcherStateCopyWithImpl<$Res>
    implements _$SingleBoughtInvoiceWatcherStateCopyWith<$Res> {
  __$SingleBoughtInvoiceWatcherStateCopyWithImpl(
      _SingleBoughtInvoiceWatcherState _value,
      $Res Function(_SingleBoughtInvoiceWatcherState) _then)
      : super(_value, (v) => _then(v as _SingleBoughtInvoiceWatcherState));

  @override
  _SingleBoughtInvoiceWatcherState get _value =>
      super._value as _SingleBoughtInvoiceWatcherState;

  @override
  $Res call({
    Object? bill = freezed,
    Object? showErrorMessages = freezed,
    Object? navigationWork = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_SingleBoughtInvoiceWatcherState(
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

class _$_SingleBoughtInvoiceWatcherState
    implements _SingleBoughtInvoiceWatcherState {
  const _$_SingleBoughtInvoiceWatcherState(
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
    return 'SingleBoughtInvoiceWatcherState(bill: $bill, showErrorMessages: $showErrorMessages, navigationWork: $navigationWork, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SingleBoughtInvoiceWatcherState &&
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
  _$SingleBoughtInvoiceWatcherStateCopyWith<_SingleBoughtInvoiceWatcherState>
      get copyWith => __$SingleBoughtInvoiceWatcherStateCopyWithImpl<
          _SingleBoughtInvoiceWatcherState>(this, _$identity);
}

abstract class _SingleBoughtInvoiceWatcherState
    implements SingleBoughtInvoiceWatcherState {
  const factory _SingleBoughtInvoiceWatcherState(
      {BoughtNotForm? bill,
      bool? showErrorMessages,
      bool? navigationWork,
      bool? isEditing,
      bool? isSaving,
      Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
          saveFailureOrSuccessOption}) = _$_SingleBoughtInvoiceWatcherState;

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
  _$SingleBoughtInvoiceWatcherStateCopyWith<_SingleBoughtInvoiceWatcherState>
      get copyWith => throw _privateConstructorUsedError;
}
