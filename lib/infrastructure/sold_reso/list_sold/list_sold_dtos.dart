import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/Sold_reso/measuremnt.dart';
// import 'package:shamagri_latest_flutter_version/domain/Sold_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/list_sold/list_sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/value_objects.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/quotation_reso/quotation_dtos.dart';

part 'list_sold_dtos.freezed.dart';
part 'list_sold_dtos.g.dart';

@freezed
abstract class ListSoldDto implements _$ListSoldDto {
  const ListSoldDto._();

  const factory ListSoldDto({
    @JsonKey(ignore: true) String? soldId,
    @Default(0) int? total,
    @required String? sellerUserId,
    @required String? sellerDisplayName,
    @required String? sellerPhotoUrl,
    @required String? buyerUserId,
    @required String? buyerDisplayName,
    @required String? buyerPhotoUrl,
    @required @ServerTimestampConverter() FieldValue updatedAt,
  }) = _ListSoldDto;
//? only for update and delete not create
  factory ListSoldDto.fromDomain(ListSold listSold) {
    return ListSoldDto(
      soldId: listSold.id!.getOrCrash(),
      total: listSold.total!.getOrCrash(),
      sellerUserId: listSold.sellerUserId!.getOrCrash(),
      sellerDisplayName: listSold.sellerDisplayName!.getOrCrash(),
      sellerPhotoUrl: listSold.sellerPhotoUrl!.getOrCrash(),
      buyerUserId: listSold.buyerUserId!.getOrCrash(),
      buyerDisplayName: listSold.buyerDisplayName!.getOrCrash(),
      buyerPhotoUrl: listSold.buyerPhotoUrl!.getOrCrash(),
      updatedAt: listSold.updatedAt!,
    );
  }

  ListSold toDomain() {
    return ListSold(
      id: UniqueId.fromUniqueString(soldId!),
      sellerDisplayName: UserDisplayName(sellerDisplayName!),
      buyerDisplayName: UserDisplayName(buyerDisplayName!),
      sellerPhotoUrl: UserPhotoUrl(sellerPhotoUrl!),
      buyerPhotoUrl: UserPhotoUrl(buyerPhotoUrl!),
      total: SoldTotal(total!),
      updatedAt: updatedAt!,
      buyerUserId: UserIdListSold(buyerUserId!),
      sellerUserId: UserIdListSold(sellerUserId!),
    );
  }

  factory ListSoldDto.fromJson(Map<String, dynamic> json) =>
      _$ListSoldDtoFromJson(json);

  factory ListSoldDto.fromFirestore(DocumentSnapshot doc) {
    return ListSoldDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(soldId: doc.id);
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
