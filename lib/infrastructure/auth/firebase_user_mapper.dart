import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:shamagri_latest_flutter_version/domain/auth/user.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      email: email,
      displayName: displayName,
      photoUrl: photoURL,
    );
  }
}
