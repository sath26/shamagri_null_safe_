// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sold_not_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SoldNotFormTearOff {
  const _$SoldNotFormTearOff();

  _SoldNotForm call(
      {UniqueId? id,
      SoldTotalHere? total,
      EmailAddressBought? buyerEmail,
      List3Sold<Quotation>? quotations,
      EmailAddressSold? sellerEmail,
      UserIdSold? sellerUserId,
      UserIdSold? buyerUserId,
      UserDisplayNameSold? sellerDisplayName,
      UserDisplayNameSold? buyerDisplayName,
      UserPhotoUrlSold? sellerPhotoUrl,
      UserPhotoUrlSold? buyerPhotoUrl,
      SoldApproved? isApproved}) {
    return _SoldNotForm(
      id: id,
      total: total,
      buyerEmail: buyerEmail,
      quotations: quotations,
      sellerEmail: sellerEmail,
      sellerUserId: sellerUserId,
      buyerUserId: buyerUserId,
      sellerDisplayName: sellerDisplayName,
      buyerDisplayName: buyerDisplayName,
      sellerPhotoUrl: sellerPhotoUrl,
      buyerPhotoUrl: buyerPhotoUrl,
      isApproved: isApproved,
    );
  }
}

/// @nodoc
const $SoldNotForm = _$SoldNotFormTearOff();

/// @nodoc
mixin _$SoldNotForm {
  UniqueId? get id => throw _privateConstructorUsedError;
  SoldTotalHere? get total => throw _privateConstructorUsedError;
  EmailAddressBought? get buyerEmail =>
      throw _privateConstructorUsedError; // @required SoldColor color,
  List3Sold<Quotation>? get quotations => throw _privateConstructorUsedError;
  EmailAddressSold? get sellerEmail => throw _privateConstructorUsedError;
  UserIdSold? get sellerUserId => throw _privateConstructorUsedError;
  UserIdSold? get buyerUserId => throw _privateConstructorUsedError;
  UserDisplayNameSold? get sellerDisplayName =>
      throw _privateConstructorUsedError;
  UserDisplayNameSold? get buyerDisplayName =>
      throw _privateConstructorUsedError;
  UserPhotoUrlSold? get sellerPhotoUrl => throw _privateConstructorUsedError;
  UserPhotoUrlSold? get buyerPhotoUrl => throw _privateConstructorUsedError;
  SoldApproved? get isApproved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SoldNotFormCopyWith<SoldNotForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoldNotFormCopyWith<$Res> {
  factory $SoldNotFormCopyWith(
          SoldNotForm value, $Res Function(SoldNotForm) then) =
      _$SoldNotFormCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      SoldTotalHere? total,
      EmailAddressBought? buyerEmail,
      List3Sold<Quotation>? quotations,
      EmailAddressSold? sellerEmail,
      UserIdSold? sellerUserId,
      UserIdSold? buyerUserId,
      UserDisplayNameSold? sellerDisplayName,
      UserDisplayNameSold? buyerDisplayName,
      UserPhotoUrlSold? sellerPhotoUrl,
      UserPhotoUrlSold? buyerPhotoUrl,
      SoldApproved? isApproved});
}

/// @nodoc
class _$SoldNotFormCopyWithImpl<$Res> implements $SoldNotFormCopyWith<$Res> {
  _$SoldNotFormCopyWithImpl(this._value, this._then);

  final SoldNotForm _value;
  // ignore: unused_field
  final $Res Function(SoldNotForm) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? buyerEmail = freezed,
    Object? quotations = freezed,
    Object? sellerEmail = freezed,
    Object? sellerUserId = freezed,
    Object? buyerUserId = freezed,
    Object? sellerDisplayName = freezed,
    Object? buyerDisplayName = freezed,
    Object? sellerPhotoUrl = freezed,
    Object? buyerPhotoUrl = freezed,
    Object? isApproved = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as SoldTotalHere?,
      buyerEmail: buyerEmail == freezed
          ? _value.buyerEmail
          : buyerEmail // ignore: cast_nullable_to_non_nullable
              as EmailAddressBought?,
      quotations: quotations == freezed
          ? _value.quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List3Sold<Quotation>?,
      sellerEmail: sellerEmail == freezed
          ? _value.sellerEmail
          : sellerEmail // ignore: cast_nullable_to_non_nullable
              as EmailAddressSold?,
      sellerUserId: sellerUserId == freezed
          ? _value.sellerUserId
          : sellerUserId // ignore: cast_nullable_to_non_nullable
              as UserIdSold?,
      buyerUserId: buyerUserId == freezed
          ? _value.buyerUserId
          : buyerUserId // ignore: cast_nullable_to_non_nullable
              as UserIdSold?,
      sellerDisplayName: sellerDisplayName == freezed
          ? _value.sellerDisplayName
          : sellerDisplayName // ignore: cast_nullable_to_non_nullable
              as UserDisplayNameSold?,
      buyerDisplayName: buyerDisplayName == freezed
          ? _value.buyerDisplayName
          : buyerDisplayName // ignore: cast_nullable_to_non_nullable
              as UserDisplayNameSold?,
      sellerPhotoUrl: sellerPhotoUrl == freezed
          ? _value.sellerPhotoUrl
          : sellerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as UserPhotoUrlSold?,
      buyerPhotoUrl: buyerPhotoUrl == freezed
          ? _value.buyerPhotoUrl
          : buyerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as UserPhotoUrlSold?,
      isApproved: isApproved == freezed
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as SoldApproved?,
    ));
  }
}

/// @nodoc
abstract class _$SoldNotFormCopyWith<$Res>
    implements $SoldNotFormCopyWith<$Res> {
  factory _$SoldNotFormCopyWith(
          _SoldNotForm value, $Res Function(_SoldNotForm) then) =
      __$SoldNotFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      SoldTotalHere? total,
      EmailAddressBought? buyerEmail,
      List3Sold<Quotation>? quotations,
      EmailAddressSold? sellerEmail,
      UserIdSold? sellerUserId,
      UserIdSold? buyerUserId,
      UserDisplayNameSold? sellerDisplayName,
      UserDisplayNameSold? buyerDisplayName,
      UserPhotoUrlSold? sellerPhotoUrl,
      UserPhotoUrlSold? buyerPhotoUrl,
      SoldApproved? isApproved});
}

/// @nodoc
class __$SoldNotFormCopyWithImpl<$Res> extends _$SoldNotFormCopyWithImpl<$Res>
    implements _$SoldNotFormCopyWith<$Res> {
  __$SoldNotFormCopyWithImpl(
      _SoldNotForm _value, $Res Function(_SoldNotForm) _then)
      : super(_value, (v) => _then(v as _SoldNotForm));

  @override
  _SoldNotForm get _value => super._value as _SoldNotForm;

  @override
  $Res call({
    Object? id = freezed,
    Object? total = freezed,
    Object? buyerEmail = freezed,
    Object? quotations = freezed,
    Object? sellerEmail = freezed,
    Object? sellerUserId = freezed,
    Object? buyerUserId = freezed,
    Object? sellerDisplayName = freezed,
    Object? buyerDisplayName = freezed,
    Object? sellerPhotoUrl = freezed,
    Object? buyerPhotoUrl = freezed,
    Object? isApproved = freezed,
  }) {
    return _then(_SoldNotForm(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as SoldTotalHere?,
      buyerEmail: buyerEmail == freezed
          ? _value.buyerEmail
          : buyerEmail // ignore: cast_nullable_to_non_nullable
              as EmailAddressBought?,
      quotations: quotations == freezed
          ? _value.quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List3Sold<Quotation>?,
      sellerEmail: sellerEmail == freezed
          ? _value.sellerEmail
          : sellerEmail // ignore: cast_nullable_to_non_nullable
              as EmailAddressSold?,
      sellerUserId: sellerUserId == freezed
          ? _value.sellerUserId
          : sellerUserId // ignore: cast_nullable_to_non_nullable
              as UserIdSold?,
      buyerUserId: buyerUserId == freezed
          ? _value.buyerUserId
          : buyerUserId // ignore: cast_nullable_to_non_nullable
              as UserIdSold?,
      sellerDisplayName: sellerDisplayName == freezed
          ? _value.sellerDisplayName
          : sellerDisplayName // ignore: cast_nullable_to_non_nullable
              as UserDisplayNameSold?,
      buyerDisplayName: buyerDisplayName == freezed
          ? _value.buyerDisplayName
          : buyerDisplayName // ignore: cast_nullable_to_non_nullable
              as UserDisplayNameSold?,
      sellerPhotoUrl: sellerPhotoUrl == freezed
          ? _value.sellerPhotoUrl
          : sellerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as UserPhotoUrlSold?,
      buyerPhotoUrl: buyerPhotoUrl == freezed
          ? _value.buyerPhotoUrl
          : buyerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as UserPhotoUrlSold?,
      isApproved: isApproved == freezed
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as SoldApproved?,
    ));
  }
}

/// @nodoc

class _$_SoldNotForm extends _SoldNotForm {
  const _$_SoldNotForm(
      {this.id,
      this.total,
      this.buyerEmail,
      this.quotations,
      this.sellerEmail,
      this.sellerUserId,
      this.buyerUserId,
      this.sellerDisplayName,
      this.buyerDisplayName,
      this.sellerPhotoUrl,
      this.buyerPhotoUrl,
      this.isApproved})
      : super._();

  @override
  final UniqueId? id;
  @override
  final SoldTotalHere? total;
  @override
  final EmailAddressBought? buyerEmail;
  @override // @required SoldColor color,
  final List3Sold<Quotation>? quotations;
  @override
  final EmailAddressSold? sellerEmail;
  @override
  final UserIdSold? sellerUserId;
  @override
  final UserIdSold? buyerUserId;
  @override
  final UserDisplayNameSold? sellerDisplayName;
  @override
  final UserDisplayNameSold? buyerDisplayName;
  @override
  final UserPhotoUrlSold? sellerPhotoUrl;
  @override
  final UserPhotoUrlSold? buyerPhotoUrl;
  @override
  final SoldApproved? isApproved;

  @override
  String toString() {
    return 'SoldNotForm(id: $id, total: $total, buyerEmail: $buyerEmail, quotations: $quotations, sellerEmail: $sellerEmail, sellerUserId: $sellerUserId, buyerUserId: $buyerUserId, sellerDisplayName: $sellerDisplayName, buyerDisplayName: $buyerDisplayName, sellerPhotoUrl: $sellerPhotoUrl, buyerPhotoUrl: $buyerPhotoUrl, isApproved: $isApproved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoldNotForm &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.buyerEmail, buyerEmail) &&
            const DeepCollectionEquality()
                .equals(other.quotations, quotations) &&
            const DeepCollectionEquality()
                .equals(other.sellerEmail, sellerEmail) &&
            const DeepCollectionEquality()
                .equals(other.sellerUserId, sellerUserId) &&
            const DeepCollectionEquality()
                .equals(other.buyerUserId, buyerUserId) &&
            const DeepCollectionEquality()
                .equals(other.sellerDisplayName, sellerDisplayName) &&
            const DeepCollectionEquality()
                .equals(other.buyerDisplayName, buyerDisplayName) &&
            const DeepCollectionEquality()
                .equals(other.sellerPhotoUrl, sellerPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other.buyerPhotoUrl, buyerPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other.isApproved, isApproved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(buyerEmail),
      const DeepCollectionEquality().hash(quotations),
      const DeepCollectionEquality().hash(sellerEmail),
      const DeepCollectionEquality().hash(sellerUserId),
      const DeepCollectionEquality().hash(buyerUserId),
      const DeepCollectionEquality().hash(sellerDisplayName),
      const DeepCollectionEquality().hash(buyerDisplayName),
      const DeepCollectionEquality().hash(sellerPhotoUrl),
      const DeepCollectionEquality().hash(buyerPhotoUrl),
      const DeepCollectionEquality().hash(isApproved));

  @JsonKey(ignore: true)
  @override
  _$SoldNotFormCopyWith<_SoldNotForm> get copyWith =>
      __$SoldNotFormCopyWithImpl<_SoldNotForm>(this, _$identity);
}

abstract class _SoldNotForm extends SoldNotForm {
  const factory _SoldNotForm(
      {UniqueId? id,
      SoldTotalHere? total,
      EmailAddressBought? buyerEmail,
      List3Sold<Quotation>? quotations,
      EmailAddressSold? sellerEmail,
      UserIdSold? sellerUserId,
      UserIdSold? buyerUserId,
      UserDisplayNameSold? sellerDisplayName,
      UserDisplayNameSold? buyerDisplayName,
      UserPhotoUrlSold? sellerPhotoUrl,
      UserPhotoUrlSold? buyerPhotoUrl,
      SoldApproved? isApproved}) = _$_SoldNotForm;
  const _SoldNotForm._() : super._();

  @override
  UniqueId? get id;
  @override
  SoldTotalHere? get total;
  @override
  EmailAddressBought? get buyerEmail;
  @override // @required SoldColor color,
  List3Sold<Quotation>? get quotations;
  @override
  EmailAddressSold? get sellerEmail;
  @override
  UserIdSold? get sellerUserId;
  @override
  UserIdSold? get buyerUserId;
  @override
  UserDisplayNameSold? get sellerDisplayName;
  @override
  UserDisplayNameSold? get buyerDisplayName;
  @override
  UserPhotoUrlSold? get sellerPhotoUrl;
  @override
  UserPhotoUrlSold? get buyerPhotoUrl;
  @override
  SoldApproved? get isApproved;
  @override
  @JsonKey(ignore: true)
  _$SoldNotFormCopyWith<_SoldNotForm> get copyWith =>
      throw _privateConstructorUsedError;
}
