part of 'quotation_bloc.dart';

@freezed
abstract class QuotationEvent with _$QuotationEvent {
  const factory QuotationEvent.initialized(
      Option<Quotation>? initialQuotationOption) = _Initialized;
  const factory QuotationEvent.titleChanged(String? titleStr) = _TitleChanged;
  const factory QuotationEvent.unitChanged(String? unitStr) = _UnitChanged;
  const factory QuotationEvent.rateChanged(num? rateStr) = _RateChanged;
  const factory QuotationEvent.quantityChanged(num? quantityStr) =
      _QuantityChanged;
  const factory QuotationEvent.isSelectedOrNot(
          Option<Quotation>? selectedQuotationOption, bool? isSelected) =
      _IsSelectedOrNot;
  const factory QuotationEvent.saved() = _Saved;
}
