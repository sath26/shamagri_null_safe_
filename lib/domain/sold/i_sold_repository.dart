import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/user.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart'
    as u;

abstract class ISoldRepository {
  Future<Either<UserFailure, List<u.User>>> userExistOrFail(String buyerEmail);
  // Stream<Either<SoldFailure, KtList<Sold>>> watchUncompleted();
  Stream<Either<SoldNotFormFailure, List<SoldNotForm>>> afterTen();
  Stream<Either<SoldNotFormFailure, List<SoldNotForm>>> firstTen(String soldId);
  Future<Either<SoldFailure, Unit>> create(Sold sold);
  Future<Either<SoldFailure, Unit>> createTest(
      Sold sold, User sellerUserDetail);
  Future<Either<SoldFailure, Sold>> update(Sold sold);
  Future<Either<SoldFailure, Sold>> delete(Sold sold);
}
