import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/User_reso/todo_item.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();

  const factory User({
    @required UniqueId? id,
    @required EmailAddress? email,
    @required UserPhotoUrl? photoUrl,
    @required UserDisplayName? displayName,
    // @required UserColor color,
    // @required List3<TodoItem> todos,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        displayName: UserDisplayName(''),
        email: EmailAddress(''),
        photoUrl: UserPhotoUrl(''),
        // color: UserColor(UserColor.predefinedColors[0]),
        /*todos: List3(emptyList()),*/
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return email!.failureOrUnit
        .andThen(displayName!.failureOrUnit)
        .andThen(photoUrl!.failureOrUnit)
        /* .andThen(todos.failureOrUser)
        .andThen(
          //todos
              .getOrCrash()
              // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUser from a VALUE OBJECT
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              // If we can't get the 0th element, the list is empty. In such a case, it's valid.
              .getOrElse(0, (_) => none())
              .fold(() => right(User), (f) => left(f)),
        ) */
        .fold((f) => some(f), (_) => none());
  }
}
