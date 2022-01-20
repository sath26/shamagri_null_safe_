// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bought_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoughtDto _$$_BoughtDtoFromJson(Map<String, dynamic> json) => _$_BoughtDto(
      quotations: (json['quotations'] as List<dynamic>?)
          ?.map((e) => BoughtQuotationDto.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$_BoughtDtoToJson(_$_BoughtDto instance) =>
    <String, dynamic>{
      'quotations': instance.quotations,
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

_$_BoughtQuotationDto _$$_BoughtQuotationDtoFromJson(
        Map<String, dynamic> json) =>
    _$_BoughtQuotationDto(
      id: json['id'] as String?,
      title: json['title'] as String?,
      measuremntUnit: json['measuremntUnit'] as String?,
      rate: json['rate'] as num?,
      quantity: json['quantity'] as num?,
      userID: json['userID'] as String?,
      isSelected: json['isSelected'] as bool?,
      index: json['index'] as num?,
    );

Map<String, dynamic> _$$_BoughtQuotationDtoToJson(
        _$_BoughtQuotationDto instance) =>
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
