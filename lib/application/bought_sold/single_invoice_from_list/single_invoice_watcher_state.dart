part of 'single_invoice_watcher_bloc.dart';

@freezed
abstract class SingleInvoiceWatcherState with _$SingleInvoiceWatcherState {
/*   const factory SingleInvoiceWatcherState.initialized(
      Option<Sold> afterSelectSoldOption) = _Initialized; */

  const factory SingleInvoiceWatcherState({
    @required SoldNotForm? bill,
    @required bool? showErrorMessages,
    @required bool? navigationWork,
    @required bool? isEditing,
    @required bool? isSaving,
    @required
        Option<Either<SoldNotFormFailure, Unit>>? saveFailureOrSuccessOption,
  }) = _SingleInvoiceWatcherState;
  /*  const factory SingleInvoiceWatcherState.loadBillAfterEdit({
    @required Sold bill,
  }) = _LoadBillAfterEdit; */
  factory SingleInvoiceWatcherState.initial() => SingleInvoiceWatcherState(
        bill: SoldNotForm.empty(),
        showErrorMessages: false,
        navigationWork: false, //works in opposite of showErrorMessage
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
