import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/value_objects.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(ignore: true) String? id1,
    @required String? displayName,
    @required String? email,
    @required String? photoUrl,
    // @required String userID,
    // @required int color,
    // @required List<TodoItemDto> todos,
    @required @ServerTimestampConverter() FieldValue? createdAt,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id1: user.id!.getOrCrash(),
      displayName: user.displayName!.getOrCrash(),
      email: user.email!.getOrCrash(),
      photoUrl: user.photoUrl!.getOrCrash(),
      /*  color: user.color.getOrCrash().value,
      //todos: user.todos
          .getOrCrash()
          .map(
            (todoItem) => TodoItemDto.fromDomain(todoItem),
          )
          .asList(), */
      createdAt: FieldValue.serverTimestamp(),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id1!),
      email: EmailAddress(email!),
      displayName: UserDisplayName(displayName!),
      photoUrl: UserPhotoUrl(photoUrl!),

      // isEditing: false
      /*  color: userColor(Color(color)),
      //todos: List3(todos.map((dto) => dto.toDomain()).toImmutableList()), */
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id1: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue?, Object?> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object? json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object? toJson(FieldValue? fieldValue) => fieldValue;
}
