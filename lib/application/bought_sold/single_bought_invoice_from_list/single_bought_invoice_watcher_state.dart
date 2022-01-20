part of 'single_bought_invoice_watcher_bloc.dart';

@freezed
abstract class SingleBoughtInvoiceWatcherState
    with _$SingleBoughtInvoiceWatcherState {
/*   const factory SingleInvoiceWatcherState.initialized(
      Option<Sold> afterSelectSoldOption) = _Initialized; */

  const factory SingleBoughtInvoiceWatcherState({
    @required BoughtNotForm? bill,
    @required bool? showErrorMessages,
    @required bool? navigationWork,
    @required bool? isEditing,
    @required bool? isSaving,
    @required
        Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
            saveFailureOrSuccessOption,
  }) = _SingleBoughtInvoiceWatcherState;
  /*  const factory SingleInvoiceWatcherState.loadBillAfterEdit({
    @required Sold bill,
  }) = _LoadBillAfterEdit; */
  factory SingleBoughtInvoiceWatcherState.initial() =>
      SingleBoughtInvoiceWatcherState(
        bill: BoughtNotForm.empty(),
        showErrorMessages: false,
        navigationWork: false, //works in opposite of showErrorMessage
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
