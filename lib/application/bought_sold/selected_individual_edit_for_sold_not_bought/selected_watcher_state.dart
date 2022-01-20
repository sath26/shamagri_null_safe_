part of 'selected_watcher_bloc.dart';

@freezed
abstract class SelectedWatcherState with _$SelectedWatcherState {
/*   const factory SelectedWatcherState.initialized(
      Option<Sold> afterSelectSoldOption) = _Initialized; */

  const factory SelectedWatcherState({
    @required Sold? bill,
    @required bool? showErrorMessages,
    @required bool? navigationWork,
    @required bool? isEditing,
    @required bool? isSaving,
    @required Option<Either<SoldFailure, Unit>>? saveFailureOrSuccessOption,
  }) = _SelectedWatcherState;
  /*  const factory SelectedWatcherState.loadBillAfterEdit({
    @required Sold bill,
  }) = _LoadBillAfterEdit; */
  factory SelectedWatcherState.initial() => SelectedWatcherState(
        bill: Sold.empty(),
        showErrorMessages: false,
        navigationWork: false, //works in opposite of showErrorMessage
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
