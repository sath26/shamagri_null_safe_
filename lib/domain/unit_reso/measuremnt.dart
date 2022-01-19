import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/Measuremnt_reso/todo_item.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/value_objects.dart';

part 'measuremnt.freezed.dart';

@freezed
abstract class Measuremnt implements _$Measuremnt, ItemClassWithAccessor {
  const Measuremnt._();

  const factory Measuremnt({
    @required UniqueId? id,
    @required UnitBody? title,
    @required bool? isEditing,
    // @required MeasuremntColor color,
    // @required List3<TodoItem> todos,
  }) = _Measuremnt;

  factory Measuremnt.empty() => Measuremnt(
        id: UniqueId(),
        title: UnitBody(''),
        isEditing: false,
        // color: MeasuremntColor(MeasuremntColor.predefinedColors[0]),
        /*todos: List3(emptyList()),*/
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title!.failureOrUnit
        /* .andThen(todos.failureOrMeasuremnt)
        .andThen(
          //todos
              .getOrCrash()
              // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrMeasuremnt from a VALUE OBJECT
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              // If we can't get the 0th element, the list is empty. In such a case, it's valid.
              .getOrElse(0, (_) => none())
              .fold(() => right(Measuremnt), (f) => left(f)),
        ) */
        .fold((f) => some(f), (_) => none());
  }
}
