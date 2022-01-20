// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_sold_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListSoldDto _$$_ListSoldDtoFromJson(Map<String, dynamic> json) =>
    _$_ListSoldDto(
      total: json['total'] as num? ?? 0,
      sellerUserId: json['sellerUserId'] as String?,
      sellerDisplayName: json['sellerDisplayName'] as String?,
      sellerPhotoUrl: json['sellerPhotoUrl'] as String?,
      buyerUserId: json['buyerUserId'] as String?,
      buyerDisplayName: json['buyerDisplayName'] as String?,
      buyerPhotoUrl: json['buyerPhotoUrl'] as String?,
      updatedAt: const ServerTimestampConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$_ListSoldDtoToJson(_$_ListSoldDto instance) =>
    <String, dynamic>{
      'total': instance.total,
      'sellerUserId': instance.sellerUserId,
      'sellerDisplayName': instance.sellerDisplayName,
      'sellerPhotoUrl': instance.sellerPhotoUrl,
      'buyerUserId': instance.buyerUserId,
      'buyerDisplayName': instance.buyerDisplayName,
      'buyerPhotoUrl': instance.buyerPhotoUrl,
      'updatedAt': const ServerTimestampConverter().toJson(instance.updatedAt),
    };
