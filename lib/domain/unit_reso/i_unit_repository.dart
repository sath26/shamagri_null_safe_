import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt.dart';
import 'package:shamagri_latest_flutter_version/domain/unit_reso/measuremnt_failure.dart';

abstract class IUnitRepository {
  Stream<Either<UnitFailure, List<Measuremnt>>> watchAll();
  Stream<Either<UnitFailure, KtList<Measuremnt>>> watchUncompleted();
  Future<Either<UnitFailure, Measuremnt>> create(Measuremnt unit);
  Future<Either<UnitFailure, Measuremnt>> update(Measuremnt unit);
  Future<Either<UnitFailure, Measuremnt>> delete(Measuremnt unit);
}
