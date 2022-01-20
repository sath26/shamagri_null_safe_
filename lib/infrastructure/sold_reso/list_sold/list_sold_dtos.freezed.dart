// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_sold_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListSoldDto _$ListSoldDtoFromJson(Map<String, dynamic> json) {
  return _ListSoldDto.fromJson(json);
}

/// @nodoc
class _$ListSoldDtoTearOff {
  const _$ListSoldDtoTearOff();

  _ListSoldDto call(
      {@JsonKey(ignore: true) String? soldId,
      num? total = 0,
      String? sellerUserId,
      String? sellerDisplayName,
      String? sellerPhotoUrl,
      String? buyerUserId,
      String? buyerDisplayName,
      String? buyerPhotoUrl,
      @ServerTimestampConverter() FieldValue? updatedAt}) {
    return _ListSoldDto(
      soldId: soldId,
      total: total,
      sellerUserId: sellerUserId,
      sellerDisplayName: sellerDisplayName,
      sellerPhotoUrl: sellerPhotoUrl,
      buyerUserId: buyerUserId,
      buyerDisplayName: buyerDisplayName,
      buyerPhotoUrl: buyerPhotoUrl,
      updatedAt: updatedAt,
    );
  }

  ListSoldDto fromJson(Map<String, Object?> json) {
    return ListSoldDto.fromJson(json);
  }
}

/// @nodoc
const $ListSoldDto = _$ListSoldDtoTearOff();

/// @nodoc
mixin _$ListSoldDto {
  @JsonKey(ignore: true)
  String? get soldId => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  String? get sellerUserId => throw _privateConstructorUsedError;
  String? get sellerDisplayName => throw _privateConstructorUsedError;
  String? get sellerPhotoUrl => throw _privateConstructorUsedError;
  String? get buyerUserId => throw _privateConstructorUsedError;
  String? get buyerDisplayName => throw _privateConstructorUsedError;
  String? get buyerPhotoUrl => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListSoldDtoCopyWith<ListSoldDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSoldDtoCopyWith<$Res> {
  factory $ListSoldDtoCopyWith(
          ListSoldDto value, $Res Function(ListSoldDto) then) =
      _$ListSoldDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? soldId,
      num? total,
      String? sellerUserId,
      String? sellerDisplayName,
      String? sellerPhotoUrl,
      String? buyerUserId,
      String? buyerDisplayName,
      String? buyerPhotoUrl,
      @ServerTimestampConverter() FieldValue? updatedAt});
}

/// @nodoc
class _$ListSoldDtoCopyWithImpl<$Res> implements $ListSoldDtoCopyWith<$Res> {
  _$ListSoldDtoCopyWithImpl(this._value, this._then);

  final ListSoldDto _value;
  // ignore: unused_field
  final $Res Function(ListSoldDto) _then;

  @override
  $Res call({
    Object? soldId = freezed,
    Object? total = freezed,
    Object? sellerUserId = freezed,
    Object? sellerDisplayName = freezed,
    Object? sellerPhotoUrl = freezed,
    Object? buyerUserId = freezed,
    Object? buyerDisplayName = freezed,
    Object? buyerPhotoUrl = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      soldId: soldId == freezed
          ? _value.soldId
          : soldId // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      sellerUserId: sellerUserId == freezed
          ? _value.sellerUserId
          : sellerUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerDisplayName: sellerDisplayName == freezed
          ? _value.sellerDisplayName
          : sellerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerPhotoUrl: sellerPhotoUrl == freezed
          ? _value.sellerPhotoUrl
          : sellerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerUserId: buyerUserId == freezed
          ? _value.buyerUserId
          : buyerUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerDisplayName: buyerDisplayName == freezed
          ? _value.buyerDisplayName
          : buyerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerPhotoUrl: buyerPhotoUrl == freezed
          ? _value.buyerPhotoUrl
          : buyerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
abstract class _$ListSoldDtoCopyWith<$Res>
    implements $ListSoldDtoCopyWith<$Res> {
  factory _$ListSoldDtoCopyWith(
          _ListSoldDto value, $Res Function(_ListSoldDto) then) =
      __$ListSoldDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? soldId,
      num? total,
      String? sellerUserId,
      String? sellerDisplayName,
      String? sellerPhotoUrl,
      String? buyerUserId,
      String? buyerDisplayName,
      String? buyerPhotoUrl,
      @ServerTimestampConverter() FieldValue? updatedAt});
}

/// @nodoc
class __$ListSoldDtoCopyWithImpl<$Res> extends _$ListSoldDtoCopyWithImpl<$Res>
    implements _$ListSoldDtoCopyWith<$Res> {
  __$ListSoldDtoCopyWithImpl(
      _ListSoldDto _value, $Res Function(_ListSoldDto) _then)
      : super(_value, (v) => _then(v as _ListSoldDto));

  @override
  _ListSoldDto get _value => super._value as _ListSoldDto;

  @override
  $Res call({
    Object? soldId = freezed,
    Object? total = freezed,
    Object? sellerUserId = freezed,
    Object? sellerDisplayName = freezed,
    Object? sellerPhotoUrl = freezed,
    Object? buyerUserId = freezed,
    Object? buyerDisplayName = freezed,
    Object? buyerPhotoUrl = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ListSoldDto(
      soldId: soldId == freezed
          ? _value.soldId
          : soldId // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      sellerUserId: sellerUserId == freezed
          ? _value.sellerUserId
          : sellerUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerDisplayName: sellerDisplayName == freezed
          ? _value.sellerDisplayName
          : sellerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerPhotoUrl: sellerPhotoUrl == freezed
          ? _value.sellerPhotoUrl
          : sellerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerUserId: buyerUserId == freezed
          ? _value.buyerUserId
          : buyerUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerDisplayName: buyerDisplayName == freezed
          ? _value.buyerDisplayName
          : buyerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerPhotoUrl: buyerPhotoUrl == freezed
          ? _value.buyerPhotoUrl
          : buyerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListSoldDto extends _ListSoldDto {
  const _$_ListSoldDto(
      {@JsonKey(ignore: true) this.soldId,
      this.total = 0,
      this.sellerUserId,
      this.sellerDisplayName,
      this.sellerPhotoUrl,
      this.buyerUserId,
      this.buyerDisplayName,
      this.buyerPhotoUrl,
      @ServerTimestampConverter() this.updatedAt})
      : super._();

  factory _$_ListSoldDto.fromJson(Map<String, dynamic> json) =>
      _$$_ListSoldDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? soldId;
  @JsonKey()
  @override
  final num? total;
  @override
  final String? sellerUserId;
  @override
  final String? sellerDisplayName;
  @override
  final String? sellerPhotoUrl;
  @override
  final String? buyerUserId;
  @override
  final String? buyerDisplayName;
  @override
  final String? buyerPhotoUrl;
  @override
  @ServerTimestampConverter()
  final FieldValue? updatedAt;

  @override
  String toString() {
    return 'ListSoldDto(soldId: $soldId, total: $total, sellerUserId: $sellerUserId, sellerDisplayName: $sellerDisplayName, sellerPhotoUrl: $sellerPhotoUrl, buyerUserId: $buyerUserId, buyerDisplayName: $buyerDisplayName, buyerPhotoUrl: $buyerPhotoUrl, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListSoldDto &&
            const DeepCollectionEquality().equals(other.soldId, soldId) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.sellerUserId, sellerUserId) &&
            const DeepCollectionEquality()
                .equals(other.sellerDisplayName, sellerDisplayName) &&
            const DeepCollectionEquality()
                .equals(other.sellerPhotoUrl, sellerPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other.buyerUserId, buyerUserId) &&
            const DeepCollectionEquality()
                .equals(other.buyerDisplayName, buyerDisplayName) &&
            const DeepCollectionEquality()
                .equals(other.buyerPhotoUrl, buyerPhotoUrl) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(soldId),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(sellerUserId),
      const DeepCollectionEquality().hash(sellerDisplayName),
      const DeepCollectionEquality().hash(sellerPhotoUrl),
      const DeepCollectionEquality().hash(buyerUserId),
      const DeepCollectionEquality().hash(buyerDisplayName),
      const DeepCollectionEquality().hash(buyerPhotoUrl),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$ListSoldDtoCopyWith<_ListSoldDto> get copyWith =>
      __$ListSoldDtoCopyWithImpl<_ListSoldDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListSoldDtoToJson(this);
  }
}

abstract class _ListSoldDto extends ListSoldDto {
  const factory _ListSoldDto(
      {@JsonKey(ignore: true) String? soldId,
      num? total,
      String? sellerUserId,
      String? sellerDisplayName,
      String? sellerPhotoUrl,
      String? buyerUserId,
      String? buyerDisplayName,
      String? buyerPhotoUrl,
      @ServerTimestampConverter() FieldValue? updatedAt}) = _$_ListSoldDto;
  const _ListSoldDto._() : super._();

  factory _ListSoldDto.fromJson(Map<String, dynamic> json) =
      _$_ListSoldDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get soldId;
  @override
  num? get total;
  @override
  String? get sellerUserId;
  @override
  String? get sellerDisplayName;
  @override
  String? get sellerPhotoUrl;
  @override
  String? get buyerUserId;
  @override
  String? get buyerDisplayName;
  @override
  String? get buyerPhotoUrl;
  @override
  @ServerTimestampConverter()
  FieldValue? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$ListSoldDtoCopyWith<_ListSoldDto> get copyWith =>
      throw _privateConstructorUsedError;
}
