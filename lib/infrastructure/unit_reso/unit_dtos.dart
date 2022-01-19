import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/value_objects.dart';

part 'unit_dtos.freezed.dart';
part 'unit_dtos.g.dart';

@freezed
abstract class UnitDto implements _$UnitDto {
  const UnitDto._();

  const factory UnitDto({
    @JsonKey(ignore: true) String id1,
    @required String unitHere,
    // @required int color,
    // @required List<TodoItemDto> todos,
    @required @ServerTimestampConverter() FieldValue createdAt,
  }) = _UnitDto;

  factory UnitDto.fromDomain(Measuremnt unit) {
    return UnitDto(
      id1: unit.id.getOrCrash(),
      unitHere: unit.title.getOrCrash(),
      /*  color: unit.color.getOrCrash().value,
      //todos: Unit.todos
          .getOrCrash()
          .map(
            (todoItem) => TodoItemDto.fromDomain(todoItem),
          )
          .asList(), */
      createdAt: FieldValue.serverTimestamp(),
    );
  }

  Measuremnt toDomain() {
    return Measuremnt(
        id: UniqueId.fromUniqueString(id1),
        title: UnitBody(unitHere),
        isEditing: false
        /*  color: MeasuremntColor(Color(color)),
      //todos: List3(todos.map((dto) => dto.toDomain()).toImmutableList()), */
        );
  }

  factory UnitDto.fromJson(Map<String, dynamic> json) =>
      _$UnitDtoFromJson(json);

  factory UnitDto.fromFirestore(DocumentSnapshot doc) {
    return UnitDto.fromJson(doc.data()).copyWith(id1: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
