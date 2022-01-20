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
import 'package:shamagri_latest_flutter_version/domain/auth/user.dart' as a;
import 'package:shamagri_latest_flutter_version/domain/core/errors.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/i_sold_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart'
    as u;
import 'package:shamagri_latest_flutter_version/infrastructure/core/firestore_helpers.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/sold_reso/sold_dtos.dart'
    as sd;
import 'package:shamagri_latest_flutter_version/infrastructure/user/user_dtos.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/sold_reso/sold_dtos.dart';
// import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ISoldRepository)
class SoldRepository implements ISoldRepository {
  final FirebaseFirestore _firestore;

  SoldRepository(this._firestore);
  String? buyerUserID;
  String? buyerDisplayName;
  String? buyerPhotoUrl;

  @override
  Future<Either<UserFailure, List<u.User>>> userExistOrFail(
      String buyerEmail) async {
    /* final userDoc = await _firestore.userDocument();

    userDoc.get().then((DocumentSnapshot documentSnapshot) {
      // Get value of field date from document dashboard/totalVisitors
      userID = documentSnapshot.data()['id'].toString();
      //log(userID);
    }); */
    return _firestore
        .collection("users")
        .where("email", isEqualTo: buyerEmail)
        //? not  required coz userDoc has it
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        // .orderBy('createdAt', descending: true)
        .get()
        .then(
      (snapshot) {
        // log("here:  " + );
        buyerUserID = snapshot.docs.first.id.toString();
        buyerDisplayName = snapshot.docs.first.data()['displayName'];
        buyerPhotoUrl = snapshot.docs.first.data()['photoUrl'];
        return right<UserFailure, List<u.User>>(
          // isNotEmpty
          snapshot.docs
              .map((doc) => UserDto.fromFirestore(doc).toDomain())
              .toList(),
        );
      },
    ).onError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'sold_repository: userExistOrFail');
    }).catchError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left<UserFailure, List<u.User>>(
            const UserFailure.insufficientPermission());
      } else {
        log(e.toString());
        return left<UserFailure, List<u.User>>(const UserFailure.unexpected());
      }
    });
  }

  String? userID;
  DocumentSnapshot? _lastDocument;
  String? _soldId;
  @override
  Future<Either<SoldNotFormFailure, List<SoldNotForm>>> firstTen(
      String soldId) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    userID = user.id!.getOrCrash();
    /*  final userDoc = await _firestore.userDocument();

    userDoc.get().then((DocumentSnapshot documentSnapshot) {
      // Get value of field date from document dashboard/totalVisitors
      userID = documentSnapshot.data()['id'].toString();
      //log(userID);
    }); */
    _soldId = soldId;
    return _firestore
        .collection("users")
        .doc(userID)
        .collection("sold")
        .doc(_soldId)
        .collection('invoice')
        // .where("userId", isEqualTo: userID)
        //? not  required coz userDoc has it
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        .where("sellerUserId", isEqualTo: userID)
        .orderBy('createdAt', descending: true)
        .limit(10)
        .get()
        .then(
      (snapshot) {
        snapshot.docChanges.isNotEmpty;
        // log("here:  " + snapshot.docs.first.data().toString());
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

        if (snapshot.size != 0 && snapshot.docChanges.isNotEmpty) {
          return right<SoldNotFormFailure, List<SoldNotForm>>(
            // snapshot.docChanges.map((e) => SoldDto.fromFirestoreChanges(e).toDomain())
            snapshot.docs
                .map((doc) => sd.SoldDto.fromFirestore(doc).toDomain())
                .toList(),
          );
        } else {
          return left<SoldNotFormFailure, List<SoldNotForm>>(
              const SoldNotFormFailure.isEmpty());
        }
      },
    ).onError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'sold_repository: firstTen');
    }).catchError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left<SoldNotFormFailure, List<SoldNotForm>>(
            const SoldNotFormFailure.insufficientPermission());
      } else {
        log(userID! + "     " + e.toString());
        return left<SoldNotFormFailure, List<SoldNotForm>>(
            const SoldNotFormFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<SoldNotFormFailure, List<SoldNotForm>>> afterTen() async {
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
        .collection("sold")
        .doc(_soldId)
        .collection('invoice')
        // .where("userId", isEqualTo: userID)
        //? not  required coz userDoc has it
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        .where("sellerUserId", isEqualTo: userID)
        .orderBy('createdAt', descending: true)
        .startAfterDocument(_lastDocument!)
        .limit(10)
        .get()
        .then(
      (snapshot) {
        // log("here:  " + snapshot.docs.first.data().toString());
        _lastDocument = snapshot.docs[snapshot.docs.length - 1];

        return right<SoldNotFormFailure, List<SoldNotForm>>(
          snapshot.docs
              .map((doc) => sd.SoldDto.fromFirestore(doc).toDomain())
              .toList(),
        );
      },
    ).onError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'sold_repository: afterTen');
    }).catchError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left<SoldNotFormFailure, List<SoldNotForm>>(
            const SoldNotFormFailure.insufficientPermission());
      } else {
        log(e.toString());
        return left<SoldNotFormFailure, List<SoldNotForm>>(
            const SoldNotFormFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<SoldFailure, Unit>> create(Sold sold) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    try {
      // final userDoc = await _firestore.userDocument();
      final sellerUserDetail =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      final soldDto = sd.SoldDto.fromDomain(sold, sellerUserDetail,
          buyerUserID!, buyerDisplayName!, buyerPhotoUrl!);
      // Logger logger = new Logger();
      // logger.i("changes " + soldDto.toJson().toString());

      await _firestore
          .collection('users')
          .doc(sellerUserDetail.id!.getOrCrash())
          .collection('sold')
          .doc(soldDto.soldId)
          .collection("invoice")
          .doc()
          .set(soldDto.toJson());
      final soldHome = <String, dynamic>{
        "buyerEmail": soldDto.buyerEmail,
        "sellerEmail": soldDto.sellerEmail,
        "sellerUserId": soldDto.sellerUserId,
        // sellerUserId: soldDto.sellerUserId,
        "buyerUserId": soldDto.buyerUserId,
        "sellerDisplayName": soldDto.sellerDisplayName,
        "buyerDisplayName": soldDto.buyerDisplayName,
        "sellerPhotoUrl": soldDto.sellerPhotoUrl,
        "buyerPhotoUrl": soldDto.buyerPhotoUrl,
        /* total: admin.firestore.FieldValue.increment(
          soldDto.total
        ), */

        "updatedAt":
            const sd.ServerTimestampConverter().toJson(soldDto.createdAt),
      };
      await _firestore
          .collection('users')
          .doc(sellerUserDetail.id!.getOrCrash())
          .collection('sold')
          .doc(soldDto.soldId)
          .set(soldHome);

      return right(unit);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'sold_repository: create');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const SoldFailure.insufficientPermission());
      } else {
        var logger = Logger();
        logger.wtf("unexpected error " + e.toString());
        return left(const SoldFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<SoldFailure, Unit>> createTest(
      Sold sold, a.User sellerUserDetail) async {
    try {
      final soldDto = sd.SoldDto.fromDomain(
          sold,
          sellerUserDetail,
          sold.buyerUserId!.getOrCrash(),
          sold.buyerDisplayName!.getOrCrash(),
          sold.buyerPhotoUrl!.getOrCrash());

      await _firestore
          .collection("users")
          .doc(userID)
          .collection("sold")
          .doc(soldDto.soldId)
          .collection("invoice")
          .doc()
          .set(soldDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const SoldFailure.insufficientPermission());
      } else {
        var logger = Logger();
        logger.wtf("unexpected error " + e.toString());
        return left(const SoldFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<SoldFailure, Sold>> update(Sold sold) async {
    try {
      // final userDoc = await _firestore.userDocument();
      final userOption = await getIt<IAuthFacade>().getSignedInUser();
      final sellerUserDetail =
          userOption.getOrElse(() => throw NotAuthenticatedError());
      final soldDto = sd.SoldDto.fromDomain(sold, sellerUserDetail,
          buyerUserID!, buyerDisplayName!, buyerPhotoUrl!);

      await _firestore.soldCollection
          .doc(soldDto.soldId)
          .update(soldDto.toJson());
/* 
the doc will have id from page that has been loaded
await _firestore.soldCollection
          .doc(soldDto.soldId)
          .invoiceCollection
          .doc()
          .invoiceDetailsCollection
          .doc()
          .set(soldDto.toJson());
 */
      return right(sold);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'sold_repository: update');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const SoldFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const SoldFailure.unableToUpdate());
      } else {
        return left(const SoldFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<SoldFailure, Sold>> delete(Sold sold) async {
    try {
      // final userDoc = await _firestore.userDocument();
      final soldId = sold.id!.getOrCrash();

      await _firestore.soldCollection.doc(soldId).delete();

      return right(sold);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'sold_repository: delete');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const SoldFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const SoldFailure.unableToUpdate());
      } else {
        return left(const SoldFailure.unexpected());
      }
    }
  }
}
