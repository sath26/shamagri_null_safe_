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
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/i_quotation_repository.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/core/firestore_helpers.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/quotation_reso/quotation_dtos.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';

@LazySingleton(as: IQuotationRepository)
class QuotationRepository implements IQuotationRepository {
  final FirebaseFirestore _firestore;

  QuotationRepository(this._firestore);
  String? userID;

  @override
  Future<Either<QuotationFailure, List<Quotation>>> watchAll() async {
    /*  final userDoc = await _firestore.userDocument();

    userDoc.get().then((DocumentSnapshot? documentSnapshot) {
      // Get value of field date from document dashboard/totalVisitors
      userID = documentSnapshot?.data.docs['id'].toString() ?? "";
      //log(userID);
    }); */
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    userID = user.id!.getOrCrash();
    return _firestore
        .collection("users")
        .doc(userID)
        .collection("quotations")
        // .where("userId", isEqualTo: userID)
        //? not  required coz userDoc has it
        /*  .doc(userID)
        .collection("note") */
        // .orderBy('serverTimeStamp', descending: true)
        .orderBy('createdAt', descending: true)
        .get()
        .then(
      (snapshot) {
        // log("here:  " + snapshot.docs.first.data().toString());
        if (snapshot.size != 0) {
          return right<QuotationFailure, List<Quotation>>(
            snapshot.docs
                .map((doc) => QuotationDto.fromFirestore(doc).toDomain())
                .toList(),
          );
        } else {
          return left<QuotationFailure, List<Quotation>>(
              const QuotationFailure.isEmpty());
        }
      },
    ).onError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'quotation_repository: watchAll');
    }).catchError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left<QuotationFailure, List<Quotation>>(
            const QuotationFailure.insufficientPermission());
      } else {
        log(e.toString());
        return left<QuotationFailure, List<Quotation>>(
            const QuotationFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<QuotationFailure, KtList<Quotation>>> watchUncompleted() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.quotationCollection
        .orderBy('serverTimeStamp', descending: true)
        .get()
        .then((snapshot) => right<QuotationFailure, KtList<Quotation>>(
              snapshot.docs
                  .map((doc) => QuotationDto.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ))
        .onError((e, s) {
      throw FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'quotation_repository: watchUncompleted');
    }).catchError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left<QuotationFailure, KtList<Quotation>>(
            const QuotationFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left<QuotationFailure, KtList<Quotation>>(
            const QuotationFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<QuotationFailure, Quotation>> create(
      Quotation squotation) async {
    try {
      final userDoc = await _firestore.userDocument();
      final quotationDto = QuotationDto.fromDomain(squotation, userID!);

      await userDoc.quotationCollection
          .doc(quotationDto.id1)
          .set(quotationDto.toJson());

      return right(squotation);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'quotation_repository: create');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const QuotationFailure.insufficientPermission());
      } else {
        return left(const QuotationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<QuotationFailure, Quotation>> update(
      Quotation squotation) async {
    try {
      final userDoc = await _firestore.userDocument();
      final quotationDto = QuotationDto.fromDomain(squotation, userID!);

      await userDoc.quotationCollection
          .doc(quotationDto.id1)
          .update(quotationDto.toJson());

      return right(squotation);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'quotation_repository: update');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const QuotationFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const QuotationFailure.unableToUpdate());
      } else {
        return left(const QuotationFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<QuotationFailure, Quotation>> delete(
      Quotation sQuotation) async {
    try {
      final userDoc = await _firestore.userDocument();
      final quotationId = sQuotation.id!.getOrCrash();

      await userDoc.quotationCollection.doc(quotationId).delete();

      return right(sQuotation);
    } on FirebaseException catch (e, s) {
      await FirebaseCrashlytics.instance
          .recordError(e, s, reason: 'quotation_repository: delete');
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const QuotationFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const QuotationFailure.unableToUpdate());
      } else {
        return left(const QuotationFailure.unexpected());
      }
    }
  }
}
