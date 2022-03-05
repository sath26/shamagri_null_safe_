part of 'from_notification_bloc.dart';

@freezed
abstract class FromNotificationEvent with _$FromNotificationEvent {
  const factory FromNotificationEvent.initialized(
      Option<BoughtNotForm> afterSelectBoughtOption) = _Initialized;
  const factory FromNotificationEvent.from_notification(
          String sold_and_bought_Id, String soldInvoice_boughtInvoice_Id) =
      _From_notification;
  const factory FromNotificationEvent.boughtNotFormReceived(
      Either<BoughtNotFormFailure, BoughtNotForm>
          failureOrFromNotificationBought) = _BoughtNotFormReceived;
  const factory FromNotificationEvent.updated() = _Updated;
  const factory FromNotificationEvent.isApprovedChanged(bool isApproved) =
      _IsApprovedChanged;
}
