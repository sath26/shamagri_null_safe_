import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId? id,
    @required String? email,
    @required String? displayName,
    @required String? photoUrl,
  }) = _User;
}
