import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/auth_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/user.dart';

import 'value_objects.dart';

@factoryMethod
abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Map<String, dynamic>> getGoogleSignedInUserDetail();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
