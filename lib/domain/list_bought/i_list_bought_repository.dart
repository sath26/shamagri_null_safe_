// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
// import 'package:kt_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought_failure.dart';

abstract class IListBoughtRepository {
  Stream<Either<ListBoughtFailure, List<ListBought>>> firstTen();
  Stream<Either<ListBoughtFailure, List<ListBought>>> afterTen();
  // Future<Either<ListboughtFailure, Quotation>> create(Quotation quotation);
  Future<Either<ListBoughtFailure, ListBought>> update(ListBought listbought);
  Future<Either<ListBoughtFailure, ListBought>> delete(ListBought listbought);
}
