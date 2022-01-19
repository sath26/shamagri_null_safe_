import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation_failure.dart';

abstract class IQuotationRepository {
  Future<Either<QuotationFailure, List<Quotation>>> watchAll();
  Future<Either<QuotationFailure, KtList<Quotation>>> watchUncompleted();
  Future<Either<QuotationFailure, Quotation>> create(Quotation quotation);
  Future<Either<QuotationFailure, Quotation>> update(Quotation quotation);
  Future<Either<QuotationFailure, Quotation>> delete(Quotation quotation);
}
