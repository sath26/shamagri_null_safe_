part of 'single_bought_invoice_watcher_bloc.dart';

@freezed
abstract class SingleBoughtInvoiceWatcherEvent
    with _$SingleBoughtInvoiceWatcherEvent {
  const factory SingleBoughtInvoiceWatcherEvent.initialized(
      Option<BoughtNotForm> afterSelectBoughtOption) = _Initialized;
  const factory SingleBoughtInvoiceWatcherEvent.isApprovedChanged(
      bool isApproved) = _IsApprovedChanged;
  const factory SingleBoughtInvoiceWatcherEvent.updated() = _Updated;
}
