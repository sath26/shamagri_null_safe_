import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/auth_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/user.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/i_user_repository.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/auth/firebase_user_mapper.dart';
// import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final IUserRepository _userFacade;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._userFacade,
  );

  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Map<String, dynamic>> getGoogleSignedInUserDetail() async {
    final userDetails = await _firebaseAuth
        .authStateChanges()
        .firstWhere((user) => user != null);

    final user = {
      'id': userDetails?.uid,
      'email': userDetails?.email,
      'displayName': userDetails?.displayName,
      'photoUrl': userDetails?.photoURL
    };
    return user;
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress? emailAddress,
    @required Password? password,
  }) async {
    final emailAddressStr = emailAddress?.getOrCrash();
    final passwordStr = password?.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr!,
        password: passwordStr!,
      );
      return right(unit);
    } on FirebaseAuthException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'registerWithEmailAndPassword');
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress? emailAddress,
    @required Password? password,
  }) async {
    final emailAddressStr = emailAddress?.getOrCrash();
    final passwordStr = password?.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr!,
        password: passwordStr!,
      );
      return right(unit);
    } on FirebaseAuthException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'signInWithEmailAndPassword');
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      final authResult =
          await _firebaseAuth.signInWithCredential(authCredential);
      if (authResult.additionalUserInfo!.isNewUser) {
        //todo: why doesnt home page load??
        await _userFacade.create();
      }
      return right(unit);
    } on FirebaseAuthException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'signInWithGoogle');
      return left(const AuthFailure.serverError());
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithGoogleTest() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      final authResult =
          await _firebaseAuth.signInWithCredential(authCredential);

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
}
