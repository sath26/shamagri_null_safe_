/* import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart'; */

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';
import 'package:shamagri_latest_flutter_version/domain/core/errors.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/i_unit_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/core/firestore_helpers.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/unit_reso/unit_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';

@LazySingleton(as: IUnitRepository)
class UnitRepository implements IUnitRepository {
  final FirebaseFirestore _firestore;
  String? userID;

  UnitRepository(this._firestore);

  @override
  Stream<Either<UnitFailure, List<Measuremnt>>> watchAll() async* {
    /*  final userDoc = await _firestore.userDocument();
    String userID;

    userDoc.get().then((DocumentSnapshot documentSnapshot) {
      // Get value of field date from document dashboard/totalVisitors
      userID = documentSnapshot.data()['id'].toString();
      log(userID);
    }); */
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    userID = user.id!.getOrCrash();
    yield* _firestore
        .collection("users")
        .doc(userID)
        .unitCollection
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<UnitFailure, List<Measuremnt>>(
            snapshot.docs
                .map((doc) => UnitDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .doOnError((e, s) => FirebaseCrashlytics.instance
            .recordError(e, s, reason: 'unit_repository: watchAll'))
        .onErrorReturnWith((e, s) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const UnitFailure.insufficientPermission());
      } else {
        // log(e.toString());
        return left(const UnitFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<UnitFailure, KtList<Measuremnt>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.unitCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((snapshot) => right<UnitFailure, KtList<Measuremnt>>(
              snapshot.docs
                  .map((doc) => UnitDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .doOnError((e, s) => FirebaseCrashlytics.instance
            .recordError(e, s, reason: 'sold_repository: watchUncompleted'))
        .onErrorReturnWith((e, s) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const UnitFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const UnitFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<UnitFailure, Measuremnt>> create(Measuremnt sUnit) async {
    try {
      final userDoc = await _firestore.userDocument();
      final unitDto = UnitDto.fromDomain(sUnit);

      await userDoc.unitCollection.doc(unitDto.id1).set(unitDto.toJson());

      return right(sUnit);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'unit_repository: create');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UnitFailure.insufficientPermission());
      } else {
        return left(const UnitFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UnitFailure, Measuremnt>> update(Measuremnt sUnit) async {
    try {
      final userDoc = await _firestore.userDocument();
      final unitDto = UnitDto.fromDomain(sUnit);

      await userDoc.unitCollection.doc(unitDto.id1).update(unitDto.toJson());

      return right(sUnit);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'unit_repository: update');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UnitFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const UnitFailure.unableToUpdate());
      } else {
        return left(const UnitFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UnitFailure, Measuremnt>> delete(Measuremnt sUnit) async {
    try {
      final userDoc = await _firestore.userDocument();
      final unitId = sUnit.id!.getOrCrash();

      await userDoc.unitCollection.doc(unitId).delete();

      return right(sUnit);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'unit_repository: delete');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UnitFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const UnitFailure.unableToUpdate());
      } else {
        return left(const UnitFailure.unexpected());
      }
    }
  }
}
