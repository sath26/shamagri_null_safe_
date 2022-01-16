// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_bought.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListBoughtTearOff {
  const _$ListBoughtTearOff();

  _ListBought call(
      {UniqueId? id,
      UserDisplayName? sellerDisplayName,
      UserDisplayName? buyerDisplayName,
      UserPhotoUrl? sellerPhotoUrl,
      UserPhotoUrl? buyerPhotoUrl,
      UserIdListBought? sellerUserId,
      UserIdListBought? buyerUserId,
      BoughtTotal? total,
      @ServerTimestampConverter() FieldValue? updatedAt}) {
    return _ListBought(
      id: id,
      sellerDisplayName: sellerDisplayName,
      buyerDisplayName: buyerDisplayName,
      sellerPhotoUrl: sellerPhotoUrl,
      buyerPhotoUrl: buyerPhotoUrl,
      sellerUserId: sellerUserId,
      buyerUserId: buyerUserId,
      total: total,
      updatedAt: updatedAt,
    );
  }
}

/// @nodoc
const $ListBought = _$ListBoughtTearOff();

/// @nodoc
mixin _$ListBought {
  UniqueId? get id => throw _privateConstructorUsedError;
  UserDisplayName? get sellerDisplayName => throw _privateConstructorUsedError;
  UserDisplayName? get buyerDisplayName => throw _privateConstructorUsedError;
  UserPhotoUrl? get sellerPhotoUrl => throw _privateConstructorUsedError;
  UserPhotoUrl? get buyerPhotoUrl =>
      throw _privateConstructorUsedError; // @required ListBoughtUnit measuremntUnit,
// @required ListBoughtRate rate,
  UserIdListBought? get sellerUserId => throw _privateConstructorUsedError;
  UserIdListBought? get buyerUserId => throw _privateConstructorUsedError;
  BoughtTotal? get total =>
      throw _privateConstructorUsedError; // ListBoughtSelected isSelected,
// ListBoughtIndex index
// @required List3<TodoItem> todos,
  @ServerTimestampConverter()
  FieldValue? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListBoughtCopyWith<ListBought> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBoughtCopyWith<$Res> {
  factory $ListBoughtCopyWith(
          ListBought value, $Res Function(ListBought) then) =
      _$ListBoughtCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      UserDisplayName? sellerDisplayName,
      UserDisplayName? buyerDisplayName,
      UserPhotoUrl? sellerPhotoUrl,
      UserPhotoUrl? buyerPhotoUrl,
      UserIdListBought? sellerUserId,
      UserIdListBought? buyerUserId,
      BoughtTotal? total,
      @ServerTimestampConverter() FieldValue? updatedAt});
}

/// @nodoc
class _$ListBoughtCopyWithImpl<$Res> implements $ListBoughtCopyWith<$Res> {
  _$ListBoughtCopyWithImpl(this._value, this._then);

  final ListBought _value;
  // ignore: unused_field
  final $Res Function(ListBought) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sellerDisplayName = freezed,
    Object? buyerDisplayName = freezed,
    Object? sellerPhotoUrl = freezed,
    Object? buyerPhotoUrl = freezed,
    Object? sellerUserId = freezed,
    Object? buyerUserId = freezed,
    Object? total = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      sellerDisplayName: sellerDisplayName == freezed
          ? _value.sellerDisplayName
          : sellerDisplayName // ignore: cast_nullable_to_non_nullable
              as UserDisplayName?,
      buyerDisplayName: buyerDisplayName == freezed
          ? _value.buyerDisplayName
          : buyerDisplayName // ignore: cast_nullable_to_non_nullable
              as UserDisplayName?,
      sellerPhotoUrl: sellerPhotoUrl == freezed
          ? _value.sellerPhotoUrl
          : sellerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as UserPhotoUrl?,
      buyerPhotoUrl: buyerPhotoUrl == freezed
          ? _value.buyerPhotoUrl
          : buyerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as UserPhotoUrl?,
      sellerUserId: sellerUserId == freezed
          ? _value.sellerUserId
          : sellerUserId // ignore: cast_nullable_to_non_nullable
              as UserIdListBought?,
      buyerUserId: buyerUserId == freezed
          ? _value.buyerUserId
          : buyerUserId // ignore: cast_nullable_to_non_nullable
              as UserIdListBought?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as BoughtTotal?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
abstract class _$ListBoughtCopyWith<$Res> implements $ListBoughtCopyWith<$Res> {
  factory _$ListBoughtCopyWith(
          _ListBought value, $Res Function(_ListBought) then) =
      __$ListBoughtCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      UserDisplayName? sellerDisplayName,
      UserDisplayName? buyerDisplayName,
      UserPhotoUrl? sellerPhotoUrl,
      UserPhotoUrl? buyerPhotoUrl,
      UserIdListBought? sellerUserId,
      UserIdListBought? buyerUserId,
      BoughtTotal? total,
      @ServerTimestampConverter() FieldValue? updatedAt});
}

/// @nodoc
class __$ListBoughtCopyWithImpl<$Res> extends _$ListBoughtCopyWithImpl<$Res>
    implements _$ListBoughtCopyWith<$Res> {
  __$ListBoughtCopyWithImpl(
      _ListBought _value, $Res Function(_ListBought) _then)
      : super(_value, (v) => _then(v as _ListBought));

  @override
  _ListBought get _value => super._value as _ListBought;

  @override
  $Res call({
    Object? id = freezed,
    Object? sellerDisplayName = freezed,
    Object? buyerDisplayName = freezed,
    Object? sellerPhotoUrl = freezed,
    Object? buyerPhotoUrl = freezed,
    Object? sellerUserId = freezed,
    Object? buyerUserId = freezed,
    Object? total = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ListBought(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      sellerDisplayName: sellerDisplayName == freezed
          ? _value.sellerDisplayName
          : sellerDisplayName // ignore: cast_nullable_to_non_nullable
              as UserDisplayName?,
      buyerDisplayName: buyerDisplayName == freezed
          ? _value.buyerDisplayName
          : buyerDisplayName // ignore: cast_nullable_to_non_nullable
              as UserDisplayName?,
      sellerPhotoUrl: sellerPhotoUrl == freezed
          ? _value.sellerPhotoUrl
          : sellerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as UserPhotoUrl?,
      buyerPhotoUrl: buyerPhotoUrl == freezed
          ? _value.buyerPhotoUrl
          : buyerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as UserPhotoUrl?,
      sellerUserId: sellerUserId == freezed
          ? _value.sellerUserId
          : sellerUserId // ignore: cast_nullable_to_non_nullable
              as UserIdListBought?,
      buyerUserId: buyerUserId == freezed
          ? _value.buyerUserId
          : buyerUserId // ignore: cast_nullable_to_non_nullable
              as UserIdListBought?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as BoughtTotal?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc

class _$_ListBought extends _ListBought {
  const _$_ListBought(
      {this.id,
      this.sellerDisplayName,
      this.buyerDisplayName,
      this.sellerPhotoUrl,
      this.buyerPhotoUrl,
      this.sellerUserId,
      this.buyerUserId,
      this.total,
      @ServerTimestampConverter() this.updatedAt})
      : super._();

  @override
  final UniqueId? id;
  @override
  final UserDisplayName? sellerDisplayName;
  @override
  final UserDisplayName? buyerDisplayName;
  @override
  final UserPhotoUrl? sellerPhotoUrl;
  @override
  final UserPhotoUrl? buyerPhotoUrl;
  @override // @required ListBoughtUnit measuremntUnit,
// @required ListBoughtRate rate,
  final UserIdListBought? sellerUserId;
  @override
  final UserIdListBought? buyerUserId;
  @override
  final BoughtTotal? total;
  @override // ListBoughtSelected isSelected,
// ListBoughtIndex index
// @required List3<TodoItem> todos,
  @ServerTimestampConverter()
  final FieldValue? updatedAt;

  @override
  String toString() {
    return 'ListBought(id: $id, sellerDisplayName: $sellerDisplayName, buyerDisplayName: $buyerDisplayName, sellerPhotoUrl: $sellerPhotoUrl, buyerPhotoUrl: $buyerPhotoUrl, sellerUserId: $sellerUserId, buyerUserId: $buyerUserId, total: $total, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListBought &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.sellerDisplayName, sellerDisplayName) &&
            const DeepCollectionEquality()
                .equals(other.buyerDisplayName, buyerDisplayName) &&
            const DeepCollectionEquality()
                .equals(other.sellerPhotoUrl, sellerPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other.buyerPhotoUrl, buyerPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other.sellerUserId, sellerUserId) &&
            const DeepCollectionEquality()
                .equals(other.buyerUserId, buyerUserId) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(sellerDisplayName),
      const DeepCollectionEquality().hash(buyerDisplayName),
      const DeepCollectionEquality().hash(sellerPhotoUrl),
      const DeepCollectionEquality().hash(buyerPhotoUrl),
      const DeepCollectionEquality().hash(sellerUserId),
      const DeepCollectionEquality().hash(buyerUserId),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ListBoughtCopyWith<_ListBought> get copyWith =>
      __$ListBoughtCopyWithImpl<_ListBought>(this, _$identity);
}

abstract class _ListBought extends ListBought {
  const factory _ListBought(
      {UniqueId? id,
      UserDisplayName? sellerDisplayName,
      UserDisplayName? buyerDisplayName,
      UserPhotoUrl? sellerPhotoUrl,
      UserPhotoUrl? buyerPhotoUrl,
      UserIdListBought? sellerUserId,
      UserIdListBought? buyerUserId,
      BoughtTotal? total,
      @ServerTimestampConverter() FieldValue? updatedAt}) = _$_ListBought;
  const _ListBought._() : super._();

  @override
  UniqueId? get id;
  @override
  UserDisplayName? get sellerDisplayName;
  @override
  UserDisplayName? get buyerDisplayName;
  @override
  UserPhotoUrl? get sellerPhotoUrl;
  @override
  UserPhotoUrl? get buyerPhotoUrl;
  @override // @required ListBoughtUnit measuremntUnit,
// @required ListBoughtRate rate,
  UserIdListBought? get sellerUserId;
  @override
  UserIdListBought? get buyerUserId;
  @override
  BoughtTotal? get total;
  @override // ListBoughtSelected isSelected,
// ListBoughtIndex index
// @required List3<TodoItem> todos,
  @ServerTimestampConverter()
  FieldValue? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ListBoughtCopyWith<_ListBought> get copyWith =>
      throw _privateConstructorUsedError;
}
