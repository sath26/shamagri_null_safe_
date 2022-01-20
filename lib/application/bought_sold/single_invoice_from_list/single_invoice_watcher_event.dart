part of 'single_invoice_watcher_bloc.dart';

@freezed
abstract class SingleInvoiceWatcherEvent with _$SingleInvoiceWatcherEvent {
  const factory SingleInvoiceWatcherEvent.initialized(
      Option<SoldNotForm>? afterSelectSoldOption) = _Initialized;
}
