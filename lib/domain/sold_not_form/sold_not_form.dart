import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/list_sold/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/Solds/todo_item.dart';
// import 'package:shamagri_latest_flutter_version/domain/Solds/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
// import 'package:shamagri_latest_flutter_version/domain/sold/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/value_objects.dart';

part 'sold_not_form.freezed.dart';

@freezed
abstract class SoldNotForm implements _$SoldNotForm {
  const SoldNotForm._();

  const factory SoldNotForm({
    @required UniqueId? id,
    @required SoldTotalHere? total,
    @required EmailAddressBought? buyerEmail,
    // @required SoldColor color,
    @required List3Sold<Quotation>? quotations,
    @required EmailAddressSold? sellerEmail,
    @required UserIdSold? sellerUserId,
    @required UserIdSold? buyerUserId,
    @required UserDisplayNameSold? sellerDisplayName,
    @required UserDisplayNameSold? buyerDisplayName,
    @required UserPhotoUrlSold? sellerPhotoUrl,
    @required UserPhotoUrlSold? buyerPhotoUrl,
    @required SoldApproved? isApproved,
  }) = _SoldNotForm;

  factory SoldNotForm.empty() => SoldNotForm(
        id: UniqueId(),
        total: SoldTotalHere(1),
        buyerEmail: EmailAddressBought(''),
        // body: SoldBody(''),
        // color: SoldColor(SoldColor.predefinedColors[0]),
        quotations: List3Sold(emptyList()),
        sellerEmail: EmailAddressSold(''),

        sellerUserId: UserIdSold(''),
        buyerUserId: UserIdSold(''),
        sellerDisplayName: UserDisplayNameSold(''),
        buyerDisplayName: UserDisplayNameSold(''),
        sellerPhotoUrl: UserPhotoUrlSold(''),
        buyerPhotoUrl: UserPhotoUrlSold(''),
        isApproved: SoldApproved(false),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    // body.failureOrUnit
    return total!.failureOrUnit
        .andThen(buyerEmail!.failureOrUnit)
        .andThen(sellerUserId!.failureOrUnit)
        .andThen(buyerUserId!.failureOrUnit)
        .andThen(sellerDisplayName!.failureOrUnit)
        .andThen(buyerDisplayName!.failureOrUnit)
        .andThen(sellerPhotoUrl!.failureOrUnit)
        .andThen(buyerPhotoUrl!.failureOrUnit)
        .andThen(
          quotations!
              .getOrCrash()
              // Getting the failureOption from the TodoItem ENTITY - NOT a failureOrUnit from a VALUE OBJECT
              .map((quotationItem) => quotationItem.failureOption)
              .filter((o) => o.isSome())
              // If we can't get the 0th element, the list is empty. In such a case, it's valid.
              .getOrElse(0, (_) => none())
              .fold(() => right(unit), (f) => left(f)),
        )
        .fold((f) => some(f), (_) => none());
  }

  // KtList<SelectedItemPrimitive> get items => null;
}
