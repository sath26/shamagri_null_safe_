import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/bought.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/bought_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought_failure.dart';

abstract class IBoughtRepository {
  // Stream<Either<BoughtNotFormFailure, bool>> userExistOrFail(String buyerEmail);
  // Stream<Either<BoughtNotFormFailure, KtList<Bought>>> watchUncompleted();
  Future<Either<BoughtNotFormFailure, List<BoughtNotForm>>> afterTen();
  Future<Either<BoughtNotFormFailure, List<BoughtNotForm>>> firstTen(
      String boughtId);
  Future<Either<BoughtNotFormFailure, Unit>> create(BoughtNotForm bought);
  Future<Either<BoughtNotFormFailure, BoughtNotForm>> update(
      BoughtNotForm bought);
  Future<Either<BoughtNotFormFailure, BoughtNotForm>> delete(
      BoughtNotForm bought);

  Stream<Either<BoughtNotFormFailure, List<BoughtNotForm>>> from_notification(
      String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id);
}
