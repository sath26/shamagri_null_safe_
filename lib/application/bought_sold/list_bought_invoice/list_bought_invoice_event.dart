part of 'list_bought_invoice_bloc.dart';

@freezed
abstract class ListBoughtInvoiceEvent with _$ListBoughtInvoiceEvent {
  const factory ListBoughtInvoiceEvent.watchFirstTen(String? boughtId) =
      _WatchFirstTen;
  const factory ListBoughtInvoiceEvent.watchAfterTen() = _WatchAfterTen;
  const factory ListBoughtInvoiceEvent.listBoughtReceived(
      Either<BoughtNotFormFailure, List<BoughtNotForm>>? failureOrBought,
      {bool? afterTenCountIsZeroToNine,
      bool? firstTenCountIsZero}) = _ListBoughtReceived;
}
