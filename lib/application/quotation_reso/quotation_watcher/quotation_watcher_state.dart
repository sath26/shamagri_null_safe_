part of 'quotation_watcher_bloc.dart';

@freezed
abstract class QuotationWatcherState
    with _$QuotationWatcherState
    implements ItemSourceState<Quotation> {
  const factory QuotationWatcherState.initial() = _Initial;
  const factory QuotationWatcherState.loadInProgress() = _LoadInProgress;
  const factory QuotationWatcherState.loadSuccess(List<Quotation> units) =
      _LoadSuccess;
  const factory QuotationWatcherState.loadFailure(
      QuotationFailure unitFailure) = _LoadFailure;
}
