import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
// import 'package:shamagri_latest_flutter_version/domain/unit_reso/user_failure.dart';
import 'package:shamagri_latest_flutter_version/domain/user_reso/user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, List<User>>> watchAll();
  Future<Either<UserFailure, KtList<User>>> watchUncompleted();
  Future<Either<UserFailure, User>> create();
  Future<Either<UserFailure, User>> update(User user);
  Future<Either<UserFailure, User>> delete(User user);
}
