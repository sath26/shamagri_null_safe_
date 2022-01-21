import 'dart:io';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';
import 'package:shamagri_latest_flutter_version/domain/core/errors.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id!.getOrCrash());
  }

  Future<void> userInsert() async {
    final userDetailOption =
        await getIt<IAuthFacade>().getGoogleSignedInUserDetail();
    final userIDOption = await getIt<IAuthFacade>().getSignedInUser();

    final user = userIDOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id!.getOrCrash())
        .set(userDetailOption);
  }

  Future<void> tokenInsert() async {
    final userIDOption = await getIt<IAuthFacade>().getSignedInUser();

    final user = userIDOption.getOrElse(() => throw NotAuthenticatedError());
    final FirebaseMessaging _fcm = FirebaseMessaging.instance;
    final FirebaseFirestore _db = FirebaseFirestore.instance;
    String? fcmToken = await _fcm.getToken();

    // Save it to Firestore
    if (fcmToken != null) {
      var tokens = _db
          .collection('users')
          .doc(user.id!.getOrCrash())
          .collection('tokens')
          .doc(fcmToken);

      await tokens.set({
        'token': fcmToken,
        'createdAt': FieldValue.serverTimestamp(), // optional
        'platform': Platform.operatingSystem // optional
      }).catchError((error, stackTrace) =>
          FlushbarHelper.createError(message: error!.message.toString()));
    }
  }

  CollectionReference get soldCollection => collection('sold');
  CollectionReference get listBoughtCollection => collection('bought');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get listSoldCollection => collection('sold');
  CollectionReference get listBoughtCollection => collection('bought');

  CollectionReference get unitCollection => collection('units');
  CollectionReference get userCollection => collection('users');
  CollectionReference get invoiceCollection => collection('invoice');
  CollectionReference get invoiceDetailsCollection =>
      collection('invoice_details');
  CollectionReference get quotationCollection => collection('quotations');
}
