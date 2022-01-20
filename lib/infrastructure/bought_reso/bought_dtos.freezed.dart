// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bought_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoughtDto _$BoughtDtoFromJson(Map<String, dynamic> json) {
  return _BoughtDto.fromJson(json);
}

/// @nodoc
class _$BoughtDtoTearOff {
  const _$BoughtDtoTearOff();

  _BoughtDto call(
      {@JsonKey(ignore: true) String? boughtId,
      List<BoughtQuotationDto>? quotations,
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
    return _BoughtDto(
      boughtId: boughtId,
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

  BoughtDto fromJson(Map<String, Object?> json) {
    return BoughtDto.fromJson(json);
  }
}

/// @nodoc
const $BoughtDto = _$BoughtDtoTearOff();

/// @nodoc
mixin _$BoughtDto {
  @JsonKey(ignore: true)
  String? get boughtId => throw _privateConstructorUsedError;
  List<BoughtQuotationDto>? get quotations =>
      throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  String? get buyerEmail => throw _privateConstructorUsedError;
  String? get sellerEmail => throw _privateConstructorUsedError;
  String? get sellerUserId => throw _privateConstructorUsedError;
  String? get buyerUserId => throw _privateConstructorUsedError;
  String? get sellerDisplayName => throw _privateConstructorUsedError;
  String? get buyerDisplayName => throw _privateConstructorUsedError;
  String? get sellerPhotoUrl => throw _privateConstructorUsedError;
  String? get buyerPhotoUrl => throw _privateConstructorUsedError;
  bool? get isApproved =>
      throw _privateConstructorUsedError; // @required int color,
// @required List<TodoItemDto> todos,
  @ServerTimestampConverter()
  FieldValue? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoughtDtoCopyWith<BoughtDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoughtDtoCopyWith<$Res> {
  factory $BoughtDtoCopyWith(BoughtDto value, $Res Function(BoughtDto) then) =
      _$BoughtDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? boughtId,
      List<BoughtQuotationDto>? quotations,
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
class _$BoughtDtoCopyWithImpl<$Res> implements $BoughtDtoCopyWith<$Res> {
  _$BoughtDtoCopyWithImpl(this._value, this._then);

  final BoughtDto _value;
  // ignore: unused_field
  final $Res Function(BoughtDto) _then;

  @override
  $Res call({
    Object? boughtId = freezed,
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
      boughtId: boughtId == freezed
          ? _value.boughtId
          : boughtId // ignore: cast_nullable_to_non_nullable
              as String?,
      quotations: quotations == freezed
          ? _value.quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<BoughtQuotationDto>?,
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
abstract class _$BoughtDtoCopyWith<$Res> implements $BoughtDtoCopyWith<$Res> {
  factory _$BoughtDtoCopyWith(
          _BoughtDto value, $Res Function(_BoughtDto) then) =
      __$BoughtDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? boughtId,
      List<BoughtQuotationDto>? quotations,
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
class __$BoughtDtoCopyWithImpl<$Res> extends _$BoughtDtoCopyWithImpl<$Res>
    implements _$BoughtDtoCopyWith<$Res> {
  __$BoughtDtoCopyWithImpl(_BoughtDto _value, $Res Function(_BoughtDto) _then)
      : super(_value, (v) => _then(v as _BoughtDto));

  @override
  _BoughtDto get _value => super._value as _BoughtDto;

  @override
  $Res call({
    Object? boughtId = freezed,
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
    return _then(_BoughtDto(
      boughtId: boughtId == freezed
          ? _value.boughtId
          : boughtId // ignore: cast_nullable_to_non_nullable
              as String?,
      quotations: quotations == freezed
          ? _value.quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<BoughtQuotationDto>?,
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
class _$_BoughtDto extends _BoughtDto {
  const _$_BoughtDto(
      {@JsonKey(ignore: true) this.boughtId,
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

  factory _$_BoughtDto.fromJson(Map<String, dynamic> json) =>
      _$$_BoughtDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? boughtId;
  @override
  final List<BoughtQuotationDto>? quotations;
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
  @override
  final bool? isApproved;
  @override // @required int color,
// @required List<TodoItemDto> todos,
  @ServerTimestampConverter()
  final FieldValue? createdAt;

  @override
  String toString() {
    return 'BoughtDto(boughtId: $boughtId, quotations: $quotations, total: $total, buyerEmail: $buyerEmail, sellerEmail: $sellerEmail, sellerUserId: $sellerUserId, buyerUserId: $buyerUserId, sellerDisplayName: $sellerDisplayName, buyerDisplayName: $buyerDisplayName, sellerPhotoUrl: $sellerPhotoUrl, buyerPhotoUrl: $buyerPhotoUrl, isApproved: $isApproved, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BoughtDto &&
            const DeepCollectionEquality().equals(other.boughtId, boughtId) &&
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
      const DeepCollectionEquality().hash(boughtId),
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
  _$BoughtDtoCopyWith<_BoughtDto> get copyWith =>
      __$BoughtDtoCopyWithImpl<_BoughtDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoughtDtoToJson(this);
  }
}

abstract class _BoughtDto extends BoughtDto {
  const factory _BoughtDto(
      {@JsonKey(ignore: true) String? boughtId,
      List<BoughtQuotationDto>? quotations,
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
      @ServerTimestampConverter() FieldValue? createdAt}) = _$_BoughtDto;
  const _BoughtDto._() : super._();

  factory _BoughtDto.fromJson(Map<String, dynamic> json) =
      _$_BoughtDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get boughtId;
  @override
  List<BoughtQuotationDto>? get quotations;
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
  @override
  bool? get isApproved;
  @override // @required int color,
// @required List<TodoItemDto> todos,
  @ServerTimestampConverter()
  FieldValue? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$BoughtDtoCopyWith<_BoughtDto> get copyWith =>
      throw _privateConstructorUsedError;
}

BoughtQuotationDto _$BoughtQuotationDtoFromJson(Map<String, dynamic> json) {
  return _BoughtQuotationDto.fromJson(json);
}

/// @nodoc
class _$BoughtQuotationDtoTearOff {
  const _$BoughtQuotationDtoTearOff();

  _BoughtQuotationDto call(
      {String? id,
      String? title,
      String? measuremntUnit,
      num? rate,
      num? quantity,
      String? userID,
      bool? isSelected,
      num? index}) {
    return _BoughtQuotationDto(
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

  BoughtQuotationDto fromJson(Map<String, Object?> json) {
    return BoughtQuotationDto.fromJson(json);
  }
}

/// @nodoc
const $BoughtQuotationDto = _$BoughtQuotationDtoTearOff();

/// @nodoc
mixin _$BoughtQuotationDto {
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
  $BoughtQuotationDtoCopyWith<BoughtQuotationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoughtQuotationDtoCopyWith<$Res> {
  factory $BoughtQuotationDtoCopyWith(
          BoughtQuotationDto value, $Res Function(BoughtQuotationDto) then) =
      _$BoughtQuotationDtoCopyWithImpl<$Res>;
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
class _$BoughtQuotationDtoCopyWithImpl<$Res>
    implements $BoughtQuotationDtoCopyWith<$Res> {
  _$BoughtQuotationDtoCopyWithImpl(this._value, this._then);

  final BoughtQuotationDto _value;
  // ignore: unused_field
  final $Res Function(BoughtQuotationDto) _then;

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
abstract class _$BoughtQuotationDtoCopyWith<$Res>
    implements $BoughtQuotationDtoCopyWith<$Res> {
  factory _$BoughtQuotationDtoCopyWith(
          _BoughtQuotationDto value, $Res Function(_BoughtQuotationDto) then) =
      __$BoughtQuotationDtoCopyWithImpl<$Res>;
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
class __$BoughtQuotationDtoCopyWithImpl<$Res>
    extends _$BoughtQuotationDtoCopyWithImpl<$Res>
    implements _$BoughtQuotationDtoCopyWith<$Res> {
  __$BoughtQuotationDtoCopyWithImpl(
      _BoughtQuotationDto _value, $Res Function(_BoughtQuotationDto) _then)
      : super(_value, (v) => _then(v as _BoughtQuotationDto));

  @override
  _BoughtQuotationDto get _value => super._value as _BoughtQuotationDto;

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
    return _then(_BoughtQuotationDto(
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
class _$_BoughtQuotationDto extends _BoughtQuotationDto {
  const _$_BoughtQuotationDto(
      {this.id,
      this.title,
      this.measuremntUnit,
      this.rate,
      this.quantity,
      this.userID,
      this.isSelected,
      this.index})
      : super._();

  factory _$_BoughtQuotationDto.fromJson(Map<String, dynamic> json) =>
      _$$_BoughtQuotationDtoFromJson(json);

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
    return 'BoughtQuotationDto(id: $id, title: $title, measuremntUnit: $measuremntUnit, rate: $rate, quantity: $quantity, userID: $userID, isSelected: $isSelected, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BoughtQuotationDto &&
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
  _$BoughtQuotationDtoCopyWith<_BoughtQuotationDto> get copyWith =>
      __$BoughtQuotationDtoCopyWithImpl<_BoughtQuotationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoughtQuotationDtoToJson(this);
  }
}

abstract class _BoughtQuotationDto extends BoughtQuotationDto {
  const factory _BoughtQuotationDto(
      {String? id,
      String? title,
      String? measuremntUnit,
      num? rate,
      num? quantity,
      String? userID,
      bool? isSelected,
      num? index}) = _$_BoughtQuotationDto;
  const _BoughtQuotationDto._() : super._();

  factory _BoughtQuotationDto.fromJson(Map<String, dynamic> json) =
      _$_BoughtQuotationDto.fromJson;

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
  _$BoughtQuotationDtoCopyWith<_BoughtQuotationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
