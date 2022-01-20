// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sold_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SoldDto _$SoldDtoFromJson(Map<String, dynamic> json) {
  return _SoldDto.fromJson(json);
}

/// @nodoc
class _$SoldDtoTearOff {
  const _$SoldDtoTearOff();

  _SoldDto call(
      {@JsonKey(ignore: true) String? soldId,
      List<SoldQuotationDto>? quotations,
      num? total,
      String? buyerEmail,
      String? sellerEmail,
      String? sellerUserId,
      String? buyerUserId,
      String? sellerDisplayName,
      String? buyerDisplayName,
      String? sellerPhotoUrl,
      String? buyerPhotoUrl,
      bool? isApproved,
      @ServerTimestampConverter() FieldValue? createdAt}) {
    return _SoldDto(
      soldId: soldId,
      quotations: quotations,
      total: total,
      buyerEmail: buyerEmail,
      sellerEmail: sellerEmail,
      sellerUserId: sellerUserId,
      buyerUserId: buyerUserId,
      sellerDisplayName: sellerDisplayName,
      buyerDisplayName: buyerDisplayName,
      sellerPhotoUrl: sellerPhotoUrl,
      buyerPhotoUrl: buyerPhotoUrl,
      isApproved: isApproved,
      createdAt: createdAt,
    );
  }

  SoldDto fromJson(Map<String, Object?> json) {
    return SoldDto.fromJson(json);
  }
}

/// @nodoc
const $SoldDto = _$SoldDtoTearOff();

/// @nodoc
mixin _$SoldDto {
  @JsonKey(ignore: true)
  String? get soldId => throw _privateConstructorUsedError;
  List<SoldQuotationDto>? get quotations => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  String? get buyerEmail => throw _privateConstructorUsedError;
  String? get sellerEmail => throw _privateConstructorUsedError;
  String? get sellerUserId => throw _privateConstructorUsedError;
  String? get buyerUserId => throw _privateConstructorUsedError;
  String? get sellerDisplayName => throw _privateConstructorUsedError;
  String? get buyerDisplayName => throw _privateConstructorUsedError;
  String? get sellerPhotoUrl => throw _privateConstructorUsedError;
  String? get buyerPhotoUrl =>
      throw _privateConstructorUsedError; // @required int color,
// @required List<TodoItemDto> todos,
  bool? get isApproved => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoldDtoCopyWith<SoldDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoldDtoCopyWith<$Res> {
  factory $SoldDtoCopyWith(SoldDto value, $Res Function(SoldDto) then) =
      _$SoldDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? soldId,
      List<SoldQuotationDto>? quotations,
      num? total,
      String? buyerEmail,
      String? sellerEmail,
      String? sellerUserId,
      String? buyerUserId,
      String? sellerDisplayName,
      String? buyerDisplayName,
      String? sellerPhotoUrl,
      String? buyerPhotoUrl,
      bool? isApproved,
      @ServerTimestampConverter() FieldValue? createdAt});
}

/// @nodoc
class _$SoldDtoCopyWithImpl<$Res> implements $SoldDtoCopyWith<$Res> {
  _$SoldDtoCopyWithImpl(this._value, this._then);

  final SoldDto _value;
  // ignore: unused_field
  final $Res Function(SoldDto) _then;

  @override
  $Res call({
    Object? soldId = freezed,
    Object? quotations = freezed,
    Object? total = freezed,
    Object? buyerEmail = freezed,
    Object? sellerEmail = freezed,
    Object? sellerUserId = freezed,
    Object? buyerUserId = freezed,
    Object? sellerDisplayName = freezed,
    Object? buyerDisplayName = freezed,
    Object? sellerPhotoUrl = freezed,
    Object? buyerPhotoUrl = freezed,
    Object? isApproved = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      soldId: soldId == freezed
          ? _value.soldId
          : soldId // ignore: cast_nullable_to_non_nullable
              as String?,
      quotations: quotations == freezed
          ? _value.quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<SoldQuotationDto>?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      buyerEmail: buyerEmail == freezed
          ? _value.buyerEmail
          : buyerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerEmail: sellerEmail == freezed
          ? _value.sellerEmail
          : sellerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerUserId: sellerUserId == freezed
          ? _value.sellerUserId
          : sellerUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerUserId: buyerUserId == freezed
          ? _value.buyerUserId
          : buyerUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerDisplayName: sellerDisplayName == freezed
          ? _value.sellerDisplayName
          : sellerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerDisplayName: buyerDisplayName == freezed
          ? _value.buyerDisplayName
          : buyerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerPhotoUrl: sellerPhotoUrl == freezed
          ? _value.sellerPhotoUrl
          : sellerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerPhotoUrl: buyerPhotoUrl == freezed
          ? _value.buyerPhotoUrl
          : buyerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isApproved: isApproved == freezed
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
abstract class _$SoldDtoCopyWith<$Res> implements $SoldDtoCopyWith<$Res> {
  factory _$SoldDtoCopyWith(_SoldDto value, $Res Function(_SoldDto) then) =
      __$SoldDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? soldId,
      List<SoldQuotationDto>? quotations,
      num? total,
      String? buyerEmail,
      String? sellerEmail,
      String? sellerUserId,
      String? buyerUserId,
      String? sellerDisplayName,
      String? buyerDisplayName,
      String? sellerPhotoUrl,
      String? buyerPhotoUrl,
      bool? isApproved,
      @ServerTimestampConverter() FieldValue? createdAt});
}

/// @nodoc
class __$SoldDtoCopyWithImpl<$Res> extends _$SoldDtoCopyWithImpl<$Res>
    implements _$SoldDtoCopyWith<$Res> {
  __$SoldDtoCopyWithImpl(_SoldDto _value, $Res Function(_SoldDto) _then)
      : super(_value, (v) => _then(v as _SoldDto));

  @override
  _SoldDto get _value => super._value as _SoldDto;

  @override
  $Res call({
    Object? soldId = freezed,
    Object? quotations = freezed,
    Object? total = freezed,
    Object? buyerEmail = freezed,
    Object? sellerEmail = freezed,
    Object? sellerUserId = freezed,
    Object? buyerUserId = freezed,
    Object? sellerDisplayName = freezed,
    Object? buyerDisplayName = freezed,
    Object? sellerPhotoUrl = freezed,
    Object? buyerPhotoUrl = freezed,
    Object? isApproved = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_SoldDto(
      soldId: soldId == freezed
          ? _value.soldId
          : soldId // ignore: cast_nullable_to_non_nullable
              as String?,
      quotations: quotations == freezed
          ? _value.quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<SoldQuotationDto>?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
      buyerEmail: buyerEmail == freezed
          ? _value.buyerEmail
          : buyerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerEmail: sellerEmail == freezed
          ? _value.sellerEmail
          : sellerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerUserId: sellerUserId == freezed
          ? _value.sellerUserId
          : sellerUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerUserId: buyerUserId == freezed
          ? _value.buyerUserId
          : buyerUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerDisplayName: sellerDisplayName == freezed
          ? _value.sellerDisplayName
          : sellerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerDisplayName: buyerDisplayName == freezed
          ? _value.buyerDisplayName
          : buyerDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      sellerPhotoUrl: sellerPhotoUrl == freezed
          ? _value.sellerPhotoUrl
          : sellerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerPhotoUrl: buyerPhotoUrl == freezed
          ? _value.buyerPhotoUrl
          : buyerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isApproved: isApproved == freezed
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SoldDto extends _SoldDto {
  const _$_SoldDto(
      {@JsonKey(ignore: true) this.soldId,
      this.quotations,
      this.total,
      this.buyerEmail,
      this.sellerEmail,
      this.sellerUserId,
      this.buyerUserId,
      this.sellerDisplayName,
      this.buyerDisplayName,
      this.sellerPhotoUrl,
      this.buyerPhotoUrl,
      this.isApproved,
      @ServerTimestampConverter() this.createdAt})
      : super._();

  factory _$_SoldDto.fromJson(Map<String, dynamic> json) =>
      _$$_SoldDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? soldId;
  @override
  final List<SoldQuotationDto>? quotations;
  @override
  final num? total;
  @override
  final String? buyerEmail;
  @override
  final String? sellerEmail;
  @override
  final String? sellerUserId;
  @override
  final String? buyerUserId;
  @override
  final String? sellerDisplayName;
  @override
  final String? buyerDisplayName;
  @override
  final String? sellerPhotoUrl;
  @override
  final String? buyerPhotoUrl;
  @override // @required int color,
// @required List<TodoItemDto> todos,
  final bool? isApproved;
  @override
  @ServerTimestampConverter()
  final FieldValue? createdAt;

  @override
  String toString() {
    return 'SoldDto(soldId: $soldId, quotations: $quotations, total: $total, buyerEmail: $buyerEmail, sellerEmail: $sellerEmail, sellerUserId: $sellerUserId, buyerUserId: $buyerUserId, sellerDisplayName: $sellerDisplayName, buyerDisplayName: $buyerDisplayName, sellerPhotoUrl: $sellerPhotoUrl, buyerPhotoUrl: $buyerPhotoUrl, isApproved: $isApproved, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoldDto &&
            const DeepCollectionEquality().equals(other.soldId, soldId) &&
            const DeepCollectionEquality()
                .equals(other.quotations, quotations) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.buyerEmail, buyerEmail) &&
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
                .equals(other.isApproved, isApproved) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(soldId),
      const DeepCollectionEquality().hash(quotations),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(buyerEmail),
      const DeepCollectionEquality().hash(sellerEmail),
      const DeepCollectionEquality().hash(sellerUserId),
      const DeepCollectionEquality().hash(buyerUserId),
      const DeepCollectionEquality().hash(sellerDisplayName),
      const DeepCollectionEquality().hash(buyerDisplayName),
      const DeepCollectionEquality().hash(sellerPhotoUrl),
      const DeepCollectionEquality().hash(buyerPhotoUrl),
      const DeepCollectionEquality().hash(isApproved),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$SoldDtoCopyWith<_SoldDto> get copyWith =>
      __$SoldDtoCopyWithImpl<_SoldDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SoldDtoToJson(this);
  }
}

abstract class _SoldDto extends SoldDto {
  const factory _SoldDto(
      {@JsonKey(ignore: true) String? soldId,
      List<SoldQuotationDto>? quotations,
      num? total,
      String? buyerEmail,
      String? sellerEmail,
      String? sellerUserId,
      String? buyerUserId,
      String? sellerDisplayName,
      String? buyerDisplayName,
      String? sellerPhotoUrl,
      String? buyerPhotoUrl,
      bool? isApproved,
      @ServerTimestampConverter() FieldValue? createdAt}) = _$_SoldDto;
  const _SoldDto._() : super._();

  factory _SoldDto.fromJson(Map<String, dynamic> json) = _$_SoldDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get soldId;
  @override
  List<SoldQuotationDto>? get quotations;
  @override
  num? get total;
  @override
  String? get buyerEmail;
  @override
  String? get sellerEmail;
  @override
  String? get sellerUserId;
  @override
  String? get buyerUserId;
  @override
  String? get sellerDisplayName;
  @override
  String? get buyerDisplayName;
  @override
  String? get sellerPhotoUrl;
  @override
  String? get buyerPhotoUrl;
  @override // @required int color,
// @required List<TodoItemDto> todos,
  bool? get isApproved;
  @override
  @ServerTimestampConverter()
  FieldValue? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$SoldDtoCopyWith<_SoldDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SoldQuotationDto _$SoldQuotationDtoFromJson(Map<String, dynamic> json) {
  return _SoldQuotationDto.fromJson(json);
}

/// @nodoc
class _$SoldQuotationDtoTearOff {
  const _$SoldQuotationDtoTearOff();

  _SoldQuotationDto call(
      {String? id,
      String? title,
      String? measuremntUnit,
      num? rate,
      num? quantity,
      String? userID,
      bool? isSelected,
      num? index}) {
    return _SoldQuotationDto(
      id: id,
      title: title,
      measuremntUnit: measuremntUnit,
      rate: rate,
      quantity: quantity,
      userID: userID,
      isSelected: isSelected,
      index: index,
    );
  }

  SoldQuotationDto fromJson(Map<String, Object?> json) {
    return SoldQuotationDto.fromJson(json);
  }
}

/// @nodoc
const $SoldQuotationDto = _$SoldQuotationDtoTearOff();

/// @nodoc
mixin _$SoldQuotationDto {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get measuremntUnit => throw _privateConstructorUsedError;
  num? get rate => throw _privateConstructorUsedError;
  num? get quantity => throw _privateConstructorUsedError;
  String? get userID => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;
  num? get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoldQuotationDtoCopyWith<SoldQuotationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoldQuotationDtoCopyWith<$Res> {
  factory $SoldQuotationDtoCopyWith(
          SoldQuotationDto value, $Res Function(SoldQuotationDto) then) =
      _$SoldQuotationDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? measuremntUnit,
      num? rate,
      num? quantity,
      String? userID,
      bool? isSelected,
      num? index});
}

/// @nodoc
class _$SoldQuotationDtoCopyWithImpl<$Res>
    implements $SoldQuotationDtoCopyWith<$Res> {
  _$SoldQuotationDtoCopyWithImpl(this._value, this._then);

  final SoldQuotationDto _value;
  // ignore: unused_field
  final $Res Function(SoldQuotationDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? measuremntUnit = freezed,
    Object? rate = freezed,
    Object? quantity = freezed,
    Object? userID = freezed,
    Object? isSelected = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      measuremntUnit: measuremntUnit == freezed
          ? _value.measuremntUnit
          : measuremntUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$SoldQuotationDtoCopyWith<$Res>
    implements $SoldQuotationDtoCopyWith<$Res> {
  factory _$SoldQuotationDtoCopyWith(
          _SoldQuotationDto value, $Res Function(_SoldQuotationDto) then) =
      __$SoldQuotationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? measuremntUnit,
      num? rate,
      num? quantity,
      String? userID,
      bool? isSelected,
      num? index});
}

/// @nodoc
class __$SoldQuotationDtoCopyWithImpl<$Res>
    extends _$SoldQuotationDtoCopyWithImpl<$Res>
    implements _$SoldQuotationDtoCopyWith<$Res> {
  __$SoldQuotationDtoCopyWithImpl(
      _SoldQuotationDto _value, $Res Function(_SoldQuotationDto) _then)
      : super(_value, (v) => _then(v as _SoldQuotationDto));

  @override
  _SoldQuotationDto get _value => super._value as _SoldQuotationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? measuremntUnit = freezed,
    Object? rate = freezed,
    Object? quantity = freezed,
    Object? userID = freezed,
    Object? isSelected = freezed,
    Object? index = freezed,
  }) {
    return _then(_SoldQuotationDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      measuremntUnit: measuremntUnit == freezed
          ? _value.measuremntUnit
          : measuremntUnit // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SoldQuotationDto extends _SoldQuotationDto {
  const _$_SoldQuotationDto(
      {this.id,
      this.title,
      this.measuremntUnit,
      this.rate,
      this.quantity,
      this.userID,
      this.isSelected,
      this.index})
      : super._();

  factory _$_SoldQuotationDto.fromJson(Map<String, dynamic> json) =>
      _$$_SoldQuotationDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? measuremntUnit;
  @override
  final num? rate;
  @override
  final num? quantity;
  @override
  final String? userID;
  @override
  final bool? isSelected;
  @override
  final num? index;

  @override
  String toString() {
    return 'SoldQuotationDto(id: $id, title: $title, measuremntUnit: $measuremntUnit, rate: $rate, quantity: $quantity, userID: $userID, isSelected: $isSelected, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SoldQuotationDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.measuremntUnit, measuremntUnit) &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.userID, userID) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(measuremntUnit),
      const DeepCollectionEquality().hash(rate),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(userID),
      const DeepCollectionEquality().hash(isSelected),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$SoldQuotationDtoCopyWith<_SoldQuotationDto> get copyWith =>
      __$SoldQuotationDtoCopyWithImpl<_SoldQuotationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SoldQuotationDtoToJson(this);
  }
}

abstract class _SoldQuotationDto extends SoldQuotationDto {
  const factory _SoldQuotationDto(
      {String? id,
      String? title,
      String? measuremntUnit,
      num? rate,
      num? quantity,
      String? userID,
      bool? isSelected,
      num? index}) = _$_SoldQuotationDto;
  const _SoldQuotationDto._() : super._();

  factory _SoldQuotationDto.fromJson(Map<String, dynamic> json) =
      _$_SoldQuotationDto.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get measuremntUnit;
  @override
  num? get rate;
  @override
  num? get quantity;
  @override
  String? get userID;
  @override
  bool? get isSelected;
  @override
  num? get index;
  @override
  @JsonKey(ignore: true)
  _$SoldQuotationDtoCopyWith<_SoldQuotationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
