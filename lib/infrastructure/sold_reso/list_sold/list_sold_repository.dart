/* import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart'; */

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
// import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';
import 'package:shamagri_latest_flutter_version/domain/core/errors.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/i_list_sold_repository.dart';
// import 'package:shamagri_latest_flutter_version/domain/list_sold/i_list_sold_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/core/firestore_helpers.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/sold_reso/list_sold/list_sold_dtos.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:rxdart/rxdart.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IListSoldRepository)
class ListSoldRepository implements IListSoldRepository {
  final FirebaseFirestore _firestore;
  var logger = Logger();

  ListSoldRepository(this._firestore);
  String? userID;
  DocumentSnapshot? _lastDocument;
  @override
  Stream<Either<ListSoldFailure, List<ListSold>>> firstTen() async* {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    logger.i("Sold userOption " + userOption.toString());
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    logger.i("Sold user " + user.toString());

    userID = user.id!.getOrCrash();
    logger.i("Sold userID " + userID.toString());

    /*  final userDoc = await _firestore.userDocument();

    userDoc.get().then((DocumentSnapshot documentSnapshot) {
      // Get value of field date from document dashboard/totalVisitors
      userID = documentSnapshot.data()['id'].toString();
      //log(userID);
    }); */
    yield* _firestore
        .collection("users")
        .doc(userID)
        .collection("sold")
        .where("sellerUserId", isEqualTo: userID)
        .orderBy('updatedAt', descending: true)
        .limit(10)
        .snapshots()
        .map(
      (snapshot) {
        logger.i("snapshot list_sold_repository  " + snapshot.docs.toString());

        // _lastDocument = snapshot.docs[snapshot.docs.length - 1];
        // log("_lastDocument:  " +
        // snapshot.docs[snapshot.docs.length - 1].id.toString());
        if (snapshot.size != 0) {
          return right<ListSoldFailure, List<ListSold>>(
            snapshot.docs
                .map((doc) => ListSoldDto.fromFirestore(doc).toDomain())
                .toList(),
          );
        } else {
          logger.i("empty array");
          return left<ListSoldFailure, List<ListSold>>(
              const ListSoldFailure.isEmpty());
        }
      },
    ).doOnError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'list_sold_repository: firstTen');
    }).onErrorReturnWith((e, s) {
      log(e.toString() + "list_sold_repository");
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListSoldFailure.insufficientPermission());
      } else if (e.toString().contains('RangeError (index)')) {
        log(userID! + "     " + e.toString() + "list_sold_repository");

        return left(const ListSoldFailure.isEmpty());
      } else {
        log(userID! + "     " + e.toString());
        return left(const ListSoldFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ListSoldFailure, List<ListSold>>?> afterTen() async* {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    userID = user.id!.getOrCrash();
    /*  final userDoc = await _firestore.userDocument();

    userDoc.get().then((DocumentSnapshot documentSnapshot) {
      // Get value of field date from document dashboard/totalVisitors
      userID = documentSnapshot.data()['id'].toString();
      //log(userID);
    }); */
    yield* _firestore
        .collection("users")
        .doc(userID)
        .collection("sold")
        // .where("userId", isEqualTo: userID)
        //? not  required coz userDoc has it
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        .orderBy('updatedAt', descending: true)
        .startAfterDocument(_lastDocument!)
        .limit(10)
        .where("sellerUserId", isEqualTo: userID)
        .snapshots()
        .map(
      (snapshot) {
        // log("here:  " + snapshot.docs.first.data().toString());
        _lastDocument = snapshot.docs[snapshot.docs.length - 1];
        log("_lastDocument:  " +
            snapshot.docs[snapshot.docs.length - 1].id.toString());
        if (snapshot.size != 0) {
          return right<ListSoldFailure, List<ListSold>>(
            snapshot.docs
                .map((doc) => ListSoldDto.fromFirestore(doc).toDomain())
                .toList(),
          );
        }
      },
    ).doOnError((e, s) {
      FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'list_sold_repository: userExistOrFail');
    }).onErrorReturnWith((e, s) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListSoldFailure.insufficientPermission());
      } else {
        log(e.toString());
        return left(const ListSoldFailure.unexpected());
      }
    });
  }

  /*  @override
  Future<Either<ListSoldFailure, ListSold>> create(ListSold sListSold) async {
    try {
      final userDoc = await _firestore.userDocument();
      final listSoldDto = ListSoldDto.fromDomain(sListSold, userID);

      await userDoc.listSoldCollection
          .doc(listSoldDto.id1)
          .set(listSoldDto.toJson());

      return right(sListSold);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ListSoldFailure.insufficientPermission());
      } else {
        return left(const ListSoldFailure.unexpected());
      }
    }
  } */

  @override
  Future<Either<ListSoldFailure, ListSold>> update(ListSold sListSold) async {
    try {
      final userDoc = await _firestore.userDocument();
      final listSoldDto = ListSoldDto.fromDomain(sListSold);

      await _firestore
          .collection("users")
          .doc(userID)
          .collection('sold')
          .doc(listSoldDto.soldId)
          .update(listSoldDto.toJson());

      return right(sListSold);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'sold_repository: update');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListSoldFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const ListSoldFailure.unableToUpdate());
      } else {
        return left(const ListSoldFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ListSoldFailure, ListSold>> delete(ListSold sListSold) async {
    try {
      final userDoc = await _firestore.userDocument();
      final listSoldId = sListSold.id!.getOrCrash();

      await _firestore.collection('sold').doc(listSoldId).delete();

      return right(sListSold);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'sold_repository: delete');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListSoldFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const ListSoldFailure.unableToUpdate());
      } else {
        return left(const ListSoldFailure.unexpected());
      }
    }
  }
}
