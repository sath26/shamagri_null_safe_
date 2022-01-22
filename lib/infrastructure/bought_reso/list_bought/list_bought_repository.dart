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
import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/user.dart';
import 'package:shamagri_latest_flutter_version/domain/core/errors.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/i_bought_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/bought_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/bought.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/i_list_bought_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought_failure.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/bought_reso/list_bought/list_bought_dtos.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/core/firestore_helpers.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/list_bought/list_bought_dtos.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/bought_reso/bought_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IListBoughtRepository)
class BoughtRepository implements IListBoughtRepository {
  final FirebaseFirestore _firestore;

  BoughtRepository(this._firestore);
  String? buyerUserID;
  String? buyerDisplayName;
  String? buyerPhotoUrl;

  String? userID;
  DocumentSnapshot? _lastDocument;
  String? _boughtId;
  var logger = Logger();
  Either<ListBoughtFailure, List<ListBought>> Function(QuerySnapshot)
      _listener = (QuerySnapshot snapshot) {
    Logger logger = new Logger();
    logger.i("peculiar:  " + snapshot.docs.first.data().toString());
    /*  log('_  ' + _lastDocument.data().toString());
        log('length ' + snapshot.docs.length.toString());
        log('sellerDisplayName ' +
            _lastDocument.data()['sellerDisplayName'].toString());
        log('sellerPhotoUrl ' +
            _lastDocument.data()['sellerPhotoUrl'].toString());
        log('buyerDisplayName ' +
            _lastDocument.data()['buyerDisplayName'].toString());
        log('buyerPhotoUrl ' +
            _lastDocument.data()['buyerPhotoUrl'].toString());
        log('buyerUserId ' + _lastDocument.data()['buyerUserId'].toString());
        log('sellerUserId ' + _lastDocument.data()['sellerUserId'].toString());
        log('updatedAt ' +
            (_lastDocument.data()['updatedAt']).toDate().toString());
        log('total ' + _lastDocument.data()['total'].toString()); */
    if (snapshot.size != 0) {
      return right<ListBoughtFailure, List<ListBought>>(
        snapshot.docs
            .map((doc) => ListBoughtDto.fromFirestore(doc).toDomain())
            .toList(),
      );
    } else {
      // right(ListBoughtDto);
      return left<ListBoughtFailure, List<ListBought>>(
          const ListBoughtFailure.isEmpty());
    }
  };
  @override
  Stream<Either<ListBoughtFailure, List<ListBought>>> firstTen() async* {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    logger.i("BOught userOption " + userOption.toString());

    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    userID = user.id!.getOrCrash();
    /*  final userDoc = await _firestore.userDocument();

    userDoc.get().then((DocumentSnapshot documentSnapshot) {
      // Get value of field date from document dashboard/totalVisitors
      userID = documentSnapshot.data()['id'].toString();
      //log(userID);
    }); */
    // _boughtId = boughtId;

    yield* _firestore
        .collection("users")
        .doc(userID)
        .collection("bought")

        // .where("userId", isEqualTo: userID)
        //? not  required coz userDoc has it
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        .where("buyerUserId", isEqualTo: userID)
        .orderBy('updatedAt', descending: true)
        .limit(10)
        .snapshots()
        .map(_listener)
        .doOnError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'list_bought_repository: firstTen');
    }).onErrorReturnWith((e, s) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListBoughtFailure.insufficientPermission());
      } else if (e.toString().contains('RangeError (index)')) {
        log(userID! + "     " + e.toString());

        return left(const ListBoughtFailure.isEmpty());
      } else {
        log(userID! + "     " + e.toString());
        return left(const ListBoughtFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ListBoughtFailure, List<ListBought>>> afterTen() async* {
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
        .collection("bought")

        // .where("userId", isEqualTo: userID)
        //? not  required coz userDoc has it
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        .where("buyerUserId", isEqualTo: userID)
        .orderBy('updatedAt', descending: true)
        .startAfterDocument(_lastDocument!)
        .limit(10)
        .snapshots()
        .map(
      (snapshot) {
        // log("here:  " + snapshot.docs.first.data().toString());
        if (snapshot.docs.length == 10) {
          _lastDocument = snapshot.docs[snapshot.docs.length - 1];
        }
        log("_lastDocument:  " +
            snapshot.docs[snapshot.docs.length - 1].id.toString());

        return right<ListBoughtFailure, List<ListBought>>(
          snapshot.docs
              .map((doc) => ListBoughtDto.fromFirestore(doc).toDomain())
              .toList(),
        );
      },
    ).doOnError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'list_bought_repository: firstTen');
    }).onErrorReturnWith((e, s) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListBoughtFailure.insufficientPermission());
      } else if (e.toString().contains('RangeError (index)')) {
        return left(const ListBoughtFailure.isEmpty());
      } else {
        log("afterTen repository  " + e.toString());
        return left(const ListBoughtFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<ListBoughtFailure, ListBought>> update(
      ListBought sListBought) async {
    try {
      // final userDoc = await _firestore.userDocument();
      final userOption = await getIt<IAuthFacade>().getSignedInUser();
      final buyerUserDetail =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      final userDoc = await _firestore.userDocument();
      final listBoughtDto = ListBoughtDto.fromDomain(sListBought);

      await _firestore
          .collection('bought')
          .doc(listBoughtDto.boughtId)
          .update(listBoughtDto.toJson());

      await _firestore.listBoughtCollection
          .doc(listBoughtDto.boughtId)
          .update(listBoughtDto.toJson());
/* 
the doc will have id from page that has been loaded
await _firestore.boughtCollection
          .doc(boughtDto.boughtId)
          .invoiceCollection
          .doc()
          .invoiceDetailsCollection
          .doc()
          .set(boughtDto.toJson());
 */
      return right(sListBought);
    } on FirebaseException catch (e, s) {
      FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'list_bought_repository: update');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListBoughtFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const ListBoughtFailure.unableToUpdate());
      } else {
        return left(const ListBoughtFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ListBoughtFailure, ListBought>> delete(
      ListBought bought) async {
    try {
      // final userDoc = await _firestore.userDocument();
      final boughtId = bought.id!.getOrCrash();

      await _firestore.listBoughtCollection.doc(boughtId).delete();

      return right(bought);
    } on FirebaseException catch (e, s) {
      FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'list_bought_repository: afterTen');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const ListBoughtFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const ListBoughtFailure.unableToUpdate());
      } else {
        return left(const ListBoughtFailure.unexpected());
      }
    }
  }
}
