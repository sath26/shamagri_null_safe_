/* import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart'; */

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:flutter/services.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/value_objects.dart'
    as v;
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/core/errors.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/i_user_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/user.dart' as u;
import 'package:shamagri_latest_flutter_version/infrastructure/core/firestore_helpers.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/user/user_dtos.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';

import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseFirestore _firestore;

  UserRepository(this._firestore);
  String userID = "";

  @override
  Future<Either<UserFailure, List<User>>> watchAll() async {
    /*  final userDoc = await _firestore.userDocument();

    userDoc.get().then((DocumentSnapshot documentSnapshot) {
      // Get value of field date from document dashboard/totalVisitors
      userID = documentSnapshot.data()['id'].toString();
      //log(userID);
    }); */
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return _firestore
        .collection("users")
        .where("id", isEqualTo: user.id!.getOrCrash())
        //? not  required coz userDoc has it
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        // .orderBy('createdAt', descending: true)
        .get()
        .then(
      (snapshot) {
        // log("here:  " + snapshot.docs.first.data().toString());
        if (snapshot.size != 0) {
          return right<UserFailure, List<User>>(
            snapshot.docs
                .map((doc) => UserDto.fromFirestore(doc).toDomain())
                .toList(),
          );
        } else {
          return left<UserFailure, List<User>>(const UserFailure.isEmpty());
        }
      },
    ).onError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'user_repository: watchAll');
    }).catchError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left<UserFailure, List<User>>(
            const UserFailure.insufficientPermission());
      } else {
        log(e.toString());
        return left<UserFailure, List<User>>(const UserFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<UserFailure, KtList<User>>> watchUncompleted() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.userCollection
        .orderBy('serverTimeStamp', descending: true)
        .get()
        .then((snapshot) => right<UserFailure, KtList<User>>(
              snapshot.docs
                  .map((doc) => UserDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'user_repository: watchUncompleted');
    }).catchError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left<UserFailure, KtList<User>>(
            const UserFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left<UserFailure, KtList<User>>(const UserFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<UserFailure, User>> create() async {
    try {
      User user1 = User(
          id: UniqueId(),
          email: v.EmailAddress("a"),
          displayName: v.UserDisplayName("abc"),
          photoUrl: v.UserPhotoUrl("abc"));

      await _firestore.userInsert();
      // User user;
      UserDto.fromDomain(user1);
      await _firestore.tokenInsert();
      return right(user1);
      // await userDoc.userCollection.doc(userDto.id1).set(userDto.toJson());

    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'user_repository: create');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }
  //? userInsert is done from oen of the extension from firestore_helpers.dart

  @override
  Future<Either<UserFailure, User>> update(User suser) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDto.fromDomain(suser);

      await userDoc.userCollection.doc(userDto.id1).update(userDto.toJson());

      return right(suser);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'user_repository: update');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, User>> delete(User suser) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userId = suser.id!.getOrCrash();

      await userDoc.userCollection.doc(userId).delete();

      return right(suser);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'user_repository: delete');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }
}
