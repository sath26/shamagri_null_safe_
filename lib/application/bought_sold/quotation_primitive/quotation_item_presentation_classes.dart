import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';

part 'quotation_item_presentation_classes.freezed.dart';

class FormQuotations extends ValueNotifier<KtList<SelectedItemPrimitive>> {
  FormQuotations() : super(emptyList<SelectedItemPrimitive>());
}

@freezed
abstract class SelectedItemPrimitive implements _$SelectedItemPrimitive {
  const SelectedItemPrimitive._();

  const factory SelectedItemPrimitive(
      {@required UniqueId? id,
      @required String? title,
      @required num? quantity,
      @required num? rate,
      @required String? measuremntUnit,
      @required bool? isSelected,
      num? index
      // @required bool selected,
      }) = _SelectedItemPrimitive;

  factory SelectedItemPrimitive.empty() => SelectedItemPrimitive(
      id: UniqueId(),
      quantity: 0,
      // selected: null,
      rate: 1,
      title: '',
      measuremntUnit: 'a',
      isSelected: false,
      index: 1);

  factory SelectedItemPrimitive.fromDomain(Quotation quotationItem, num index) {
    return SelectedItemPrimitive(
        id: quotationItem.id,
        title: quotationItem.title?.getOrCrash(),
        rate: quotationItem.rate?.getOrCrash(),
        quantity: quotationItem.quantity?.getOrCrash(),
        measuremntUnit: quotationItem.measuremntUnit?.getOrCrash(),
        index: index,
        isSelected: true);
  }

  // String get measuremntUnit => null;

  Quotation toDomain() {
    return Quotation(
        id: id,
        measuremntUnit: QuotationUnit(measuremntUnit!),
        quantity: QuotationQuantity(quantity!),
        rate: QuotationRate(rate!),
        title: QuotationTitle(title!),
        index: QuotationIndex(index!),
        isSelected: QuotationSelected(isSelected!));
  }
}
