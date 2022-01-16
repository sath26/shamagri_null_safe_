import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';

part 'quotation.freezed.dart';

@freezed
abstract class Quotation implements _$Quotation, ItemClassWithAccessor {
  const Quotation._();

  const factory Quotation(
      {@required UniqueId? id,
      @required QuotationTitle? title,
      @required QuotationUnit? measuremntUnit,
      @required QuotationRate? rate,
      @required QuotationQuantity? quantity,
      @required QuotationSelected? isSelected,
      @required QuotationIndex? index
      // @required List3<TodoItem> todos,
      }) = _Quotation;

  factory Quotation.empty() => Quotation(
      id: UniqueId(),
      title: QuotationTitle(''),
      rate: QuotationRate(1),
      quantity: QuotationQuantity(1),
      measuremntUnit: QuotationUnit('a'),
      isSelected: QuotationSelected(false),
      index: QuotationIndex(1)
      // color: QuotationColor(QuotationColor.predefinedColors[0]),
      // todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    // body.failureOrUnit
    return title!.failureOrUnit
        .andThen(rate!.failureOrUnit)
        .andThen(quantity!.failureOrUnit)
        .andThen(measuremntUnit!.failureOrUnit)
        .andThen(isSelected!.failureOrUnit)
        .andThen(index!.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
