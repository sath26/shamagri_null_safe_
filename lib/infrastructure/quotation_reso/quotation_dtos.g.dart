// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotation_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuotationDto _$$_QuotationDtoFromJson(Map<String, dynamic> json) =>
    _$_QuotationDto(
      title: json['title'] as String?,
      measuremntUnit: json['measuremntUnit'] as String?,
      rate: json['rate'] as num?,
      quantity: json['quantity'] as num?,
      userID: json['userID'] as String?,
      isSelected: json['isSelected'] as bool?,
      index: json['index'] as num?,
      createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$_QuotationDtoToJson(_$_QuotationDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'measuremntUnit': instance.measuremntUnit,
      'rate': instance.rate,
      'quantity': instance.quantity,
      'userID': instance.userID,
      'isSelected': instance.isSelected,
      'index': instance.index,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
    };
