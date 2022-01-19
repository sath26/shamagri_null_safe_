part of 'from_notification_bloc.dart';

@freezed
abstract class FromNotificationState with _$FromNotificationState {
/*   const factory SingleInvoiceWatcherState.initialized(
      Option<Sold> afterSelectSoldOption) = _Initialized; */
  // const factory FromNotificationState.initial() => _Initial();
  const factory FromNotificationState.initial() = _Initial;
  const factory FromNotificationState.loadInProgress() = _LoadInProgress;
  const factory FromNotificationState.loadSuccess(
      List<BoughtNotForm> fromNotificationBought) = _LoadSuccess;
  const factory FromNotificationState.loadFailure(
      BoughtNotFormFailure fromNotificationBoughtFailure) = _LoadFailure;
}
