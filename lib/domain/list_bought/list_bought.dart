import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/value_objects.dart';

part 'list_bought.freezed.dart';

@freezed
abstract class ListBought implements _$ListBought {
  const ListBought._();

  const factory ListBought({
    @required UniqueId? id,
    @required UserDisplayName? sellerDisplayName,
    @required UserDisplayName? buyerDisplayName,
    @required UserPhotoUrl? sellerPhotoUrl,
    @required UserPhotoUrl? buyerPhotoUrl,
    // @required ListBoughtUnit measuremntUnit,
    // @required ListBoughtRate rate,
    @required UserIdListBought? sellerUserId,
    @required UserIdListBought? buyerUserId,
    @required BoughtTotal? total,
    // ListBoughtSelected isSelected,
    // ListBoughtIndex index
    // @required List3<TodoItem> todos,
    @required @ServerTimestampConverter() FieldValue? updatedAt,
  }) = _ListBought;

  factory ListBought.empty() => ListBought(
        id: UniqueId(),
        sellerDisplayName: UserDisplayName(''),
        buyerDisplayName: UserDisplayName(''),
        sellerPhotoUrl:
            UserPhotoUrl(''), //todo: use defalult location for image here
        buyerPhotoUrl: UserPhotoUrl(''),
        sellerUserId: UserIdListBought(''),
        buyerUserId: UserIdListBought(''),
        // title: ListBoughtTitle(' '),
        // rate: ListBoughtRate(1),
        // quantity: ListBoughtQuantity(1),
        // measuremntUnit: ListBoughtUnit(' '),
        // isSelected: ListBoughtSelected(false),
        total: BoughtTotal(1), updatedAt: FieldValue.serverTimestamp(),
        // color: ListBoughtColor(ListBoughtColor.predefinedColors[0]),
        // todos: List3(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    // body.failureOrUnit
    return total!.failureOrUnit
        .andThen(sellerDisplayName!.failureOrUnit)
        .andThen(buyerDisplayName!.failureOrUnit)
        .andThen(sellerPhotoUrl!.failureOrUnit)
        .andThen(buyerPhotoUrl!.failureOrUnit)
        .andThen(sellerUserId!.failureOrUnit)
        .andThen(buyerUserId!.failureOrUnit)

        // .andThen(quantity.failureOrUnit)
        // .andThen(measuremntUnit.failureOrUnit)
        // .andThen(isSelected.failureOrUnit)
        // .andThen(index.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
