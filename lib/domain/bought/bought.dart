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
import 'package:shamagri_latest_flutter_version/domain/bought/value_objects.dart';

part 'bought.freezed.dart';

@freezed
abstract class Bought implements _$Bought {
  const Bought._();

  const factory Bought({
    @required UniqueId? id,
    @required BoughtTotalHere? total,
    @required EmailAddressBought? buyerEmail,
    // @required BoughtColor color,
    @required List3Bought<Quotation>? quotations,
    @required EmailAddressBought? sellerEmail,
    @required UserIdBought? sellerUserId,
    @required UserIdBought? buyerUserId,
    @required UserDisplayNameBought? sellerDisplayName,
    @required UserDisplayNameBought? buyerDisplayName,
    @required UserPhotoUrlBought? sellerPhotoUrl,
    @required UserPhotoUrlBought? buyerPhotoUrl,
  }) = _Bought;

  factory Bought.empty() => Bought(
        id: UniqueId(),
        total: BoughtTotalHere(1),
        buyerEmail: EmailAddressBought(''),
        // body: BoughtBody(''),
        // color: SoldColor(SoldColor.predefinedColors[0]),
        quotations: List3Bought(emptyList()),
        sellerEmail: EmailAddressBought(''),

        sellerUserId: UserIdBought(''),
        buyerUserId: UserIdBought(''),
        sellerDisplayName: UserDisplayNameBought(''),
        buyerDisplayName: UserDisplayNameBought(''),
        sellerPhotoUrl: UserPhotoUrlBought(''),
        buyerPhotoUrl: UserPhotoUrlBought(''),
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
