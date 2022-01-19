// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_bought_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListBoughtDto _$ListBoughtDtoFromJson(Map<String, dynamic> json) {
  return _ListBoughtDto.fromJson(json);
}

/// @nodoc
class _$ListBoughtDtoTearOff {
  const _$ListBoughtDtoTearOff();

  _ListBoughtDto call(
      {@JsonKey(ignore: true) String? boughtId,
      num? total = 0,
      String? sellerUserId,
      String? sellerDisplayName,
      String? sellerPhotoUrl,
      String? buyerUserId,
      String? buyerDisplayName,
      String? buyerPhotoUrl,
      @ServerTimestampConverter() FieldValue? updatedAt}) {
    return _ListBoughtDto(
      boughtId: boughtId,
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

  ListBoughtDto fromJson(Map<String, Object?> json) {
    return ListBoughtDto.fromJson(json);
  }
}

/// @nodoc
const $ListBoughtDto = _$ListBoughtDtoTearOff();

/// @nodoc
mixin _$ListBoughtDto {
  @JsonKey(ignore: true)
  String? get boughtId => throw _privateConstructorUsedError;
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
  $ListBoughtDtoCopyWith<ListBoughtDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBoughtDtoCopyWith<$Res> {
  factory $ListBoughtDtoCopyWith(
          ListBoughtDto value, $Res Function(ListBoughtDto) then) =
      _$ListBoughtDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? boughtId,
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
class _$ListBoughtDtoCopyWithImpl<$Res>
    implements $ListBoughtDtoCopyWith<$Res> {
  _$ListBoughtDtoCopyWithImpl(this._value, this._then);

  final ListBoughtDto _value;
  // ignore: unused_field
  final $Res Function(ListBoughtDto) _then;

  @override
  $Res call({
    Object? boughtId = freezed,
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
      boughtId: boughtId == freezed
          ? _value.boughtId
          : boughtId // ignore: cast_nullable_to_non_nullable
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
abstract class _$ListBoughtDtoCopyWith<$Res>
    implements $ListBoughtDtoCopyWith<$Res> {
  factory _$ListBoughtDtoCopyWith(
          _ListBoughtDto value, $Res Function(_ListBoughtDto) then) =
      __$ListBoughtDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? boughtId,
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
class __$ListBoughtDtoCopyWithImpl<$Res>
    extends _$ListBoughtDtoCopyWithImpl<$Res>
    implements _$ListBoughtDtoCopyWith<$Res> {
  __$ListBoughtDtoCopyWithImpl(
      _ListBoughtDto _value, $Res Function(_ListBoughtDto) _then)
      : super(_value, (v) => _then(v as _ListBoughtDto));

  @override
  _ListBoughtDto get _value => super._value as _ListBoughtDto;

  @override
  $Res call({
    Object? boughtId = freezed,
    Object? total = freezed,
    Object? sellerUserId = freezed,
    Object? sellerDisplayName = freezed,
    Object? sellerPhotoUrl = freezed,
    Object? buyerUserId = freezed,
    Object? buyerDisplayName = freezed,
    Object? buyerPhotoUrl = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ListBoughtDto(
      boughtId: boughtId == freezed
          ? _value.boughtId
          : boughtId // ignore: cast_nullable_to_non_nullable
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
class _$_ListBoughtDto extends _ListBoughtDto {
  const _$_ListBoughtDto(
      {@JsonKey(ignore: true) this.boughtId,
      this.total = 0,
      this.sellerUserId,
      this.sellerDisplayName,
      this.sellerPhotoUrl,
      this.buyerUserId,
      this.buyerDisplayName,
      this.buyerPhotoUrl,
      @ServerTimestampConverter() this.updatedAt})
      : super._();

  factory _$_ListBoughtDto.fromJson(Map<String, dynamic> json) =>
      _$$_ListBoughtDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? boughtId;
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
    return 'ListBoughtDto(boughtId: $boughtId, total: $total, sellerUserId: $sellerUserId, sellerDisplayName: $sellerDisplayName, sellerPhotoUrl: $sellerPhotoUrl, buyerUserId: $buyerUserId, buyerDisplayName: $buyerDisplayName, buyerPhotoUrl: $buyerPhotoUrl, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListBoughtDto &&
            const DeepCollectionEquality().equals(other.boughtId, boughtId) &&
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
      const DeepCollectionEquality().hash(boughtId),
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
  _$ListBoughtDtoCopyWith<_ListBoughtDto> get copyWith =>
      __$ListBoughtDtoCopyWithImpl<_ListBoughtDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListBoughtDtoToJson(this);
  }
}

abstract class _ListBoughtDto extends ListBoughtDto {
  const factory _ListBoughtDto(
      {@JsonKey(ignore: true) String? boughtId,
      num? total,
      String? sellerUserId,
      String? sellerDisplayName,
      String? sellerPhotoUrl,
      String? buyerUserId,
      String? buyerDisplayName,
      String? buyerPhotoUrl,
      @ServerTimestampConverter() FieldValue? updatedAt}) = _$_ListBoughtDto;
  const _ListBoughtDto._() : super._();

  factory _ListBoughtDto.fromJson(Map<String, dynamic> json) =
      _$_ListBoughtDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get boughtId;
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
  _$ListBoughtDtoCopyWith<_ListBoughtDto> get copyWith =>
      throw _privateConstructorUsedError;
}
