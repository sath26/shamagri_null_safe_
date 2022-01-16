part of 'list_bought_invoice_bloc.dart';

@freezed
abstract class ListBoughtInvoiceState with _$ListBoughtInvoiceState {
  const factory ListBoughtInvoiceState.initial() = _Initial;
  const factory ListBoughtInvoiceState.loadInProgress() = _LoadInProgress;
  const factory ListBoughtInvoiceState.loadSuccess(List<BoughtNotForm>? bought,
      {bool? watchAfterTenCountIsZeroToNine,
      bool? watchFirstTenCountIsZero}) = _LoadSuccess;
  const factory ListBoughtInvoiceState.loadFailure(
      BoughtNotFormFailure? boughtFailure) = _LoadFailure;
}
