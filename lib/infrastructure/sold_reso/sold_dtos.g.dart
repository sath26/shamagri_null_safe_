// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sold_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SoldDto _$$_SoldDtoFromJson(Map<String, dynamic> json) => _$_SoldDto(
      quotations: (json['quotations'] as List<dynamic>?)
          ?.map((e) => SoldQuotationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
      buyerEmail: json['buyerEmail'] as String?,
      sellerEmail: json['sellerEmail'] as String?,
      sellerUserId: json['sellerUserId'] as String?,
      buyerUserId: json['buyerUserId'] as String?,
      sellerDisplayName: json['sellerDisplayName'] as String?,
      buyerDisplayName: json['buyerDisplayName'] as String?,
      sellerPhotoUrl: json['sellerPhotoUrl'] as String?,
      buyerPhotoUrl: json['buyerPhotoUrl'] as String?,
      isApproved: json['isApproved'] as bool?,
      createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$_SoldDtoToJson(_$_SoldDto instance) =>
    <String, dynamic>{
      'quotations': instance.quotations?.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'buyerEmail': instance.buyerEmail,
      'sellerEmail': instance.sellerEmail,
      'sellerUserId': instance.sellerUserId,
      'buyerUserId': instance.buyerUserId,
      'sellerDisplayName': instance.sellerDisplayName,
      'buyerDisplayName': instance.buyerDisplayName,
      'sellerPhotoUrl': instance.sellerPhotoUrl,
      'buyerPhotoUrl': instance.buyerPhotoUrl,
      'isApproved': instance.isApproved,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
    };

_$_SoldQuotationDto _$$_SoldQuotationDtoFromJson(Map<String, dynamic> json) =>
    _$_SoldQuotationDto(
      id: json['id'] as String?,
      title: json['title'] as String?,
      measuremntUnit: json['measuremntUnit'] as String?,
      rate: json['rate'] as num?,
      quantity: json['quantity'] as num?,
      userID: json['userID'] as String?,
      isSelected: json['isSelected'] as bool?,
      index: json['index'] as num?,
    );

Map<String, dynamic> _$$_SoldQuotationDtoToJson(_$_SoldQuotationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'measuremntUnit': instance.measuremntUnit,
      'rate': instance.rate,
      'quantity': instance.quantity,
      'userID': instance.userID,
      'isSelected': instance.isSelected,
      'index': instance.index,
    };
