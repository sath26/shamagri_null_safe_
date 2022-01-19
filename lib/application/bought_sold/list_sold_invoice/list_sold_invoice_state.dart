part of 'list_sold_invoice_bloc.dart';

@freezed
abstract class ListSoldInvoiceState with _$ListSoldInvoiceState {
  const factory ListSoldInvoiceState.initial() = _Initial;
  const factory ListSoldInvoiceState.loadInProgress() = _LoadInProgress;
  const factory ListSoldInvoiceState.loadSuccess(List<SoldNotForm> sold,
      {bool watchFirstTenCountIsZero,
      bool watchAfterTenCountIsZeroToNine}) = _LoadSuccess;
  const factory ListSoldInvoiceState.loadFailure(
      SoldNotFormFailure soldFailure) = _LoadFailure;
}
