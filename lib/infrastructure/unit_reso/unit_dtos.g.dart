// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnitDto _$$_UnitDtoFromJson(Map<String, dynamic> json) => _$_UnitDto(
      unitHere: json['unitHere'] as String?,
      createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$_UnitDtoToJson(_$_UnitDto instance) =>
    <String, dynamic>{
      'unitHere': instance.unitHere,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
    };
