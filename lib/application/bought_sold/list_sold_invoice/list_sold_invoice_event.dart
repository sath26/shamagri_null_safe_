part of 'list_sold_invoice_bloc.dart';

@freezed
abstract class ListSoldInvoiceEvent with _$ListSoldInvoiceEvent {
  const factory ListSoldInvoiceEvent.watchFirstTen(String soldId) =
      _WatchFirstTen;
  const factory ListSoldInvoiceEvent.watchAfterTen() = _WatchAfterTen;
  const factory ListSoldInvoiceEvent.listSoldReceived(
      Either<SoldNotFormFailure, List<SoldNotForm>> failureOrSold,
      {bool afterTenCountIsZeroToNine,
      bool firstTenCountIsZero}) = _SoldReceived;
}
