part of 'from_notification_bloc.dart';

@freezed
abstract class FromNotificationState with _$FromNotificationState {
/*   const factory SingleInvoiceWatcherState.initialized(
      Option<Sold> afterSelectSoldOption) = _Initialized; */
  // const factory FromNotificationState.initial() => _Initial();
  factory FromNotificationState.initial() => FromNotificationState(
        bill: BoughtNotForm.empty(),
        showErrorMessages: false,
        navigationWork: false, //works in opposite of showErrorMessage
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
  /* const factory FromNotificationState.loadInProgress() = _LoadInProgress;
  const factory FromNotificationState.loadSuccess(
      BoughtNotForm fromNotificationBought) = _LoadSuccess;
  const factory FromNotificationState.loadFailure(
      BoughtNotFormFailure fromNotificationBoughtFailure) = _LoadFailure; */
  const factory FromNotificationState({
    @required BoughtNotForm? bill,
    @required bool? showErrorMessages,
    @required bool? navigationWork,
    @required bool? isEditing,
    @required bool? isSaving,
    @required
        Option<Either<BoughtNotFormFailure, BoughtNotForm>>?
            saveFailureOrSuccessOption,
  }) = _FromNotificationState;
}
