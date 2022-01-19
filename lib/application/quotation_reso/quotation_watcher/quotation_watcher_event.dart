part of 'quotation_watcher_bloc.dart';

@freezed
abstract class QuotationWatcherEvent with _$QuotationWatcherEvent {
  const factory QuotationWatcherEvent.started() = _Started;
  const factory QuotationWatcherEvent.quotationsReceived(
    Either<QuotationFailure, List<Quotation>> failureOrQuotation,
  ) = _QuotationsReceived;
  const factory QuotationWatcherEvent.changeSelected(
      List<Quotation> items, bool value, Quotation entry) = _ChangeSelected;
}
