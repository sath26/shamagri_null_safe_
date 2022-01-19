/* import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart'; */

import 'dart:async';
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
// import 'package:shamagri_latest_flutter_version/domain/bought/bought_failure.dart';
// import 'package:shamagri_latest_flutter_version/domain/bought/bought.dart';
// import 'package:shamagri_latest_flutter_version/domain/bought_not_form/bought_not_form.dart';
// import 'package:shamagri_latest_flutter_version/domain/bought_not_form/bought_not_form_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought_failure.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/core/firestore_helpers.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/bought_reso/bought_dtos.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/bought_reso/bought_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IBoughtRepository)
class BoughtRepository implements IBoughtRepository {
  final FirebaseFirestore _firestore;

  BoughtRepository(this._firestore);
  String? buyerUserID;
  String? buyerDisplayName;
  String? buyerPhotoUrl;

  String? userID;
  DocumentSnapshot? _lastDocument;
  String? _boughtId;
  Either<BoughtNotFormFailure, List<BoughtNotForm>> Function(QuerySnapshot)
      _listener = (QuerySnapshot snapshot) {
    log("after peculiar:  " + snapshot.docs.first.data().toString());
    /*  _lastDocument = snapshot.docs[snapshot.docs.length - 1];
        log('_  ' + _lastDocument.data().toString());
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
      return right<BoughtNotFormFailure, List<BoughtNotForm>>(
        snapshot.docs
            .map((doc) => BoughtDto.fromFirestore(doc).toDomain())
            .toList(),
      );
    } else {
      return left<BoughtNotFormFailure, List<BoughtNotForm>>(
          const BoughtNotFormFailure.isEmpty());
    }
  };
  @override
  Future<Either<BoughtNotFormFailure, List<BoughtNotForm>>> firstTen(
      String boughtId) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    userID = user.id!.getOrCrash();
    /*  final userDoc = await _firestore.userDocument();

    userDoc.get().then((DocumentSnapshot documentSnapshot) {
      // Get value of field date from document dashboard/totalVisitors
      userID = documentSnapshot.data()['id'].toString();
      //log(userID);
    }); */

    _boughtId = boughtId;
    return _firestore
        .collection("users")
        .doc(userID)
        .collection("bought")
        .doc(_boughtId)
        .collection('invoice')
        // .where("userId", isEqualTo: userID)
        //? not  required coz userDoc has it
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        .where("buyerUserId", isEqualTo: userID)
        .orderBy('createdAt', descending: true)
        .limit(10)
        .get()
        // .snapshots(includeMetadataChanges: true)
        .then(_listener)
        .onError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'bought_repository: firstTen');
    }).catchError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const BoughtNotFormFailure.insufficientPermission());
      } else {
        log(userID! + "     " + e.toString());
        return left(const BoughtNotFormFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<BoughtNotFormFailure, List<BoughtNotForm>>> afterTen() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    userID = user.id!.getOrCrash();
    /*  final userDoc = await _firestore.userDocument();

    userDoc.get().then((DocumentSnapshot documentSnapshot) {
      // Get value of field date from document dashboard/totalVisitors
      userID = documentSnapshot.data()['id'].toString();
      //log(userID);
    }); */
    return _firestore
        .collection("users")
        .doc(userID)
        .collection("bought")
        .doc(_boughtId)
        .collection('invoice')
        // .where("userId", isEqualTo: userID)
        //? not  required coz userDoc has it
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        .where("buyerUserId", isEqualTo: userID)
        .orderBy('createdAt', descending: true)
        .startAfterDocument(_lastDocument!)
        .limit(10)
        .get()
        .then(_listener)
        .onError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'bought_repository: afterTen');
    }).catchError((e) {
      FirebaseCrashlytics.instance
          .recordError(e, e, reason: 'bought_repository: afterTen');
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const BoughtNotFormFailure.insufficientPermission());
      } else {
        log(e.toString());
        return left(const BoughtNotFormFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<BoughtNotFormFailure, Unit>> create(
      BoughtNotForm bought) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    try {
      // final userDoc = await _firestore.userDocument();
      final sellerUserDetail =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      final boughtDto = BoughtDto.fromDomain(bought, sellerUserDetail,
          buyerUserID!, buyerDisplayName!, buyerPhotoUrl!);

      await _firestore
          .collection('bought')
          .doc(boughtDto.boughtId)
          .invoiceCollection
          .doc()
          .set(boughtDto.toJson());

      return right(unit);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'bought_repository: create');

      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BoughtNotFormFailure.insufficientPermission());
      } else {
        var logger = Logger();
        logger.wtf("unexpected error " + e.toString());
        return left(const BoughtNotFormFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<BoughtNotFormFailure, Unit>> createTest(
      BoughtNotForm bought, User sellerUserDetail) async {
    try {
      final boughtDto = BoughtDto.fromDomain(
          bought,
          sellerUserDetail,
          bought.buyerUserId!.getOrCrash(),
          bought.buyerDisplayName!.getOrCrash(),
          bought.buyerPhotoUrl!.getOrCrash());

      await _firestore
          .collection("users")
          .doc(userID)
          .collection("bought")
          .doc(boughtDto.boughtId)
          .collection("invoice")
          .doc()
          .set(boughtDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BoughtNotFormFailure.insufficientPermission());
      } else {
        var logger = Logger();
        logger.wtf("unexpected error " + e.toString());
        return left(const BoughtNotFormFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<BoughtNotFormFailure, BoughtNotForm>> update(
      BoughtNotForm bought) async {
    try {
      // final userDoc = await _firestore.userDocument();
      final userOption = await getIt<IAuthFacade>().getSignedInUser();
      final sellerUserDetail =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      final boughtDto = BoughtDto.fromDomain(
          bought,
          sellerUserDetail,
          bought.buyerUserId!.getOrCrash(),
          bought.buyerDisplayName!.getOrCrash(),
          bought.buyerPhotoUrl!.getOrCrash());
      Logger logger = Logger();
      logger.v('updateApprovedOnly    ' + boughtDto.toString());
      await _firestore
          .collection("users")
          .doc(bought.buyerUserId!.getOrCrash())
          .collection("bought")
          .doc(bought.sellerUserId!.getOrCrash() +
              "-" +
              bought.buyerUserId!.getOrCrash())
          .collection("invoice")
          .doc(boughtDto.boughtId)
          .update({"isApproved": bought.isApproved!.getOrCrash()});
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
      return right(bought);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'bought_repository: create');

      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BoughtNotFormFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const BoughtNotFormFailure.unableToUpdate());
      } else {
        return left(const BoughtNotFormFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<BoughtNotFormFailure, BoughtNotForm>> delete(
      BoughtNotForm bought) async {
    try {
      // final userDoc = await _firestore.userDocument();
      final boughtId = bought.id!.getOrCrash();

      await _firestore.collection('bought').doc(boughtId).delete();

      return right(bought);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'bought_repository: create');

      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const BoughtNotFormFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const BoughtNotFormFailure.unableToUpdate());
      } else {
        return left(const BoughtNotFormFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<BoughtNotFormFailure, List<BoughtNotForm>>> from_notification(
      String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id) {
    // TODO: implement from_notification
    throw UnimplementedError();
  }
}
