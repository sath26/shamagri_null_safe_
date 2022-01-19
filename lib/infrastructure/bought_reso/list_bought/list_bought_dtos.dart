import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/bought_reso/measuremnt.dart';
// import 'package:shamagri_latest_flutter_version/domain/bought_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/list_bought/list_bought.dart'
    as listBought;
// import 'package:shamagri_latest_flutter_version/domain/bought/value_objects.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/quotation_reso/quotation_dtos.dart';

part 'list_bought_dtos.freezed.dart';
part 'list_bought_dtos.g.dart';

@freezed
abstract class ListBoughtDto implements _$ListBoughtDto {
  const ListBoughtDto._();

  const factory ListBoughtDto({
    @JsonKey(ignore: true) String? boughtId,
    @Default(0) num? total,
    @required String? sellerUserId,
    @required String? sellerDisplayName,
    @required String? sellerPhotoUrl,
    @required String? buyerUserId,
    @required String? buyerDisplayName,
    @required String? buyerPhotoUrl,
    @required @ServerTimestampConverter() FieldValue? updatedAt,
  }) = _ListBoughtDto;
//? only for update and delete not create
  factory ListBoughtDto.fromDomain(ListBought listbought) {
    return ListBoughtDto(
      boughtId: listbought.id!.getOrCrash(),
      total: listbought.total!.getOrCrash(),
      sellerUserId: listbought.sellerUserId!.getOrCrash(),
      sellerDisplayName: listbought.sellerDisplayName!.getOrCrash(),
      sellerPhotoUrl: listbought.sellerPhotoUrl!.getOrCrash(),
      buyerUserId: listbought.buyerUserId!.getOrCrash(),
      buyerDisplayName: listbought.buyerDisplayName!.getOrCrash(),
      buyerPhotoUrl: listbought.buyerPhotoUrl!.getOrCrash(),
      updatedAt: listbought.updatedAt!,
    );
  }

  ListBought toDomain() {
    return ListBought(
      id: UniqueId.fromUniqueString(boughtId),
      sellerDisplayName: UserDisplayName(sellerDisplayName),
      buyerDisplayName: UserDisplayName(buyerDisplayName),
      sellerPhotoUrl: UserPhotoUrl(sellerPhotoUrl),
      buyerPhotoUrl: UserPhotoUrl(buyerPhotoUrl),
      total: BoughtTotal(total),
      updatedAt: updatedAt,
      buyerUserId: UserIdListBought(buyerUserId),
      sellerUserId: UserIdListBought(sellerUserId),
    );
  }

  factory ListBoughtDto.fromJson(Map<String, dynamic> json) =>
      _$ListBoughtDtoFromJson(json);

  factory ListBoughtDto.fromFirestore(DocumentSnapshot doc) {
    return ListBoughtDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(boughtId: doc.id);
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
