import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/value_objects.dart';

part 'list_sold.freezed.dart';

@freezed
abstract class ListSold implements _$ListSold {
  const ListSold._();

  const factory ListSold({
    @required UniqueId? id,
    @required UserDisplayName? sellerDisplayName,
    @required UserDisplayName? buyerDisplayName,
    @required UserPhotoUrl? sellerPhotoUrl,
    @required UserPhotoUrl? buyerPhotoUrl,
    // @required ListSoldUnit measuremntUnit,
    // @required ListSoldRate rate,
    @required UserIdListSold? sellerUserId,
    @required UserIdListSold? buyerUserId,
    @required SoldTotal? total,
    // ListSoldSelected isSelected,
    // ListSoldIndex index
    // @required List3<TodoItem> todos,
    @required @ServerTimestampConverter() FieldValue updatedAt,
  }) = _ListSold;

  factory ListSold.empty() => ListSold(
        id: UniqueId(),
        sellerDisplayName: UserDisplayName(''),
        buyerDisplayName: UserDisplayName(''),
        sellerPhotoUrl:
            UserPhotoUrl(''), //todo: use defalult location for image here
        buyerPhotoUrl: UserPhotoUrl(''),
        sellerUserId: UserIdListSold(''),
        buyerUserId: UserIdListSold(''),
        // title: ListSoldTitle(' '),
        // rate: ListSoldRate(1),
        // quantity: ListSoldQuantity(1),
        // measuremntUnit: ListSoldUnit(' '),
        // isSelected: ListSoldSelected(false),
        total: SoldTotal(1), updatedAt: FieldValue.serverTimestamp(),
        // color: ListSoldColor(ListSoldColor.predefinedColors[0]),
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

class ServerTimestampConverter implements JsonConverter<FieldValue?, Object?> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object? json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object? toJson(FieldValue? fieldValue) => fieldValue;
}
