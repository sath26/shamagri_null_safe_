import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold_failure.dart';

abstract class IListSoldRepository {
  Future<Either<ListSoldFailure, List<ListSold>>> firstTen();
  Future<Either<ListSoldFailure, List<ListSold>>?> afterTen();
  // Future<Either<ListSoldFailure, Quotation>> create(Quotation quotation);
  Future<Either<ListSoldFailure, ListSold>> update(ListSold listSold);
  Future<Either<ListSoldFailure, ListSold>> delete(ListSold listSold);
}
