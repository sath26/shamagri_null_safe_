part of 'selected_watcher_bloc.dart';

@freezed
abstract class SelectedWatcherEvent with _$SelectedWatcherEvent {
  const factory SelectedWatcherEvent.initialized(
      Option<Sold> afterSelectSoldOption) = _Initialized;
  const factory SelectedWatcherEvent.selected(
      KtList<SelectedItemPrimitive> items) = _Selected;
  const factory SelectedWatcherEvent.individualQuotationEdited(
          List3Sold<Quotation> billQuotations, num quotationIndex) =
      _IndividualQuotationEdited;
  /* const factory SelectedWatcherEvent.individualQuotationEdited() =
      _IndividualQuotationEdited; */
  //SelectedItemPrimitive item: not required here
  const factory SelectedWatcherEvent.calculateTotalAfterEdit(
      KtList<Quotation> billQuotations) = _CalculateTotalAfterEdit;
  const factory SelectedWatcherEvent.emailChanged(String buyerEmail) =
      _EmailChanged;
  const factory SelectedWatcherEvent.emailValidated(String buyerEmail) =
      _EmailValidated;
  const factory SelectedWatcherEvent.buyerUserIdValidated(String buyerUserId) =
      _BuyerUserIdValidated;
  const factory SelectedWatcherEvent.buyerDisplayNameValidated(
      String buyerDisplayName) = _BuyerDisplayNameValidated;
  const factory SelectedWatcherEvent.buyerPhotoUrlValidated(
      String buyerPhotoUrl) = _BuyerPhotoUrlValidated;
  const factory SelectedWatcherEvent.rateChanged(
      {List3Sold<Quotation> billQuotations,
      num billQuotationRate,
      Quotation entry}) = _RateChanged;
  const factory SelectedWatcherEvent.quantityChanged(
      {List3Sold<Quotation> billQuotations,
      num billQUotationQuantity,
      Quotation entry}) = _QuantityChanged;
  /* 
       const factory SelectedWatcherEvent.quantityChanged(
          List<Quotation> billQuotations, num quantityStr, num quotationIndex) =
      _QuantityChanged;
       */
  const factory SelectedWatcherEvent.saved() = _Saved;
  // const factory SelectedWatcherEvent.quotationSaved() = _QuotationSaved;
  const factory SelectedWatcherEvent.calculateTotal(
      KtList<SelectedItemPrimitive> items) = _CalculateTotal;
  const factory SelectedWatcherEvent.findBuyer() = _FindBuyer;
}
