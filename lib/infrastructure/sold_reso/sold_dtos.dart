import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/user.dart';
// import 'package:shamagri_latest_flutter_version/domain/auth/user.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
// import 'package:shamagri_latest_flutter_version/domain/Sold_reso/measuremnt.dart';
// import 'package:shamagri_latest_flutter_version/domain/Sold_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/value_objects.dart'
    as sold_not_form;
import 'package:shamagri_latest_flutter_version/domain/sold_not_form/sold_not_form.dart';
// import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
// import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
import 'package:shamagri_latest_flutter_version/infrastructure/quotation_reso/quotation_dtos.dart';

part 'sold_dtos.freezed.dart';
part 'sold_dtos.g.dart';

@freezed
abstract class SoldDto implements _$SoldDto {
  const SoldDto._();

  const factory SoldDto({
    @JsonKey(ignore: true) String? soldId,
    @required List<SoldQuotationDto>? quotations,
    @required num? total,
    @required String? buyerEmail,
    @required String? sellerEmail,
    @required String? sellerUserId,
    @required String? buyerUserId,
    @required String? sellerDisplayName,
    @required String? buyerDisplayName,
    @required String? sellerPhotoUrl,
    @required String? buyerPhotoUrl,
    // @required int color,
    // @required List<TodoItemDto> todos,
    @required bool? isApproved,
    @required @ServerTimestampConverter() FieldValue? createdAt,
  }) = _SoldDto;

  factory SoldDto.fromDomain(Sold? sold, User? sellerDetail, String? buyerID,
      String? buyerDisplayName, String? buyerPhotoUrl) {
    return SoldDto(
      soldId:
          sold!.sellerUserId.getOrCrash() + "-" + sold.buyerUserId.getOrCrash(),
      quotations: sold.quotations
          .getOrCrash()
          .map((quotation) => SoldQuotationDto.fromDomain(
              quotation, sellerDetail!.id!.getOrCrash()))
          .asList(),
      total: sold.total.getOrCrash(),
      sellerUserId: sellerDetail!.id!.getOrCrash(),
      buyerUserId: sold.buyerUserId.getOrCrash(),
      sellerDisplayName: sold.sellerDisplayName.getOrCrash(),
      buyerDisplayName: sold.buyerDisplayName.getOrCrash(),
      sellerPhotoUrl: sold.sellerPhotoUrl.getOrCrash(),
      buyerPhotoUrl: sold.buyerPhotoUrl.getOrCrash(),
      buyerEmail: sold.buyerEmail.getOrCrash(),
      sellerEmail: sold.sellerEmail.getOrCrash(),
      createdAt: FieldValue.serverTimestamp(),
      isApproved: sold.isApproved.getOrCrash(),
    );
  }

  SoldNotForm toDomain() {
    return SoldNotForm(
      id: UniqueId.fromUniqueString(soldId!),
      buyerEmail: sold_not_form.EmailAddressBought(buyerEmail!),
      quotations: sold_not_form.List3Sold(quotations!
          .map((dto) => dto.toDomain())
          .toImmutableList()), //todo: map out like for note
      total: sold_not_form.SoldTotalHere(total!),
      sellerEmail: sold_not_form.EmailAddressSold(sellerEmail!),

      sellerUserId: sold_not_form.UserIdSold(sellerUserId!),
      buyerUserId: sold_not_form.UserIdSold(buyerUserId!),
      sellerDisplayName: sold_not_form.UserDisplayNameSold(sellerDisplayName!),
      buyerDisplayName: sold_not_form.UserDisplayNameSold(buyerDisplayName!),
      sellerPhotoUrl: sold_not_form.UserPhotoUrlSold(sellerPhotoUrl!),
      buyerPhotoUrl: sold_not_form.UserPhotoUrlSold(buyerPhotoUrl!),
      isApproved: sold_not_form.SoldApproved(isApproved!),
    );
  }

  factory SoldDto.fromJson(Map<String, dynamic> json) =>
      _$SoldDtoFromJson(json);
  factory SoldDto.fromFirestoreChanges(DocumentChange doc) {
    return SoldDto.fromJson(doc.doc.data() as Map<String, dynamic>);
  }
  factory SoldDto.fromFirestore(DocumentSnapshot doc) {
    return SoldDto.fromJson(doc.data() as Map<String, dynamic>)
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

@freezed
abstract class SoldQuotationDto implements _$SoldQuotationDto {
  const SoldQuotationDto._();

  const factory SoldQuotationDto({
    @required String id,
    @required String title,
    @required String measuremntUnit,
    @required num rate,
    @required num quantity,
    @required String userID,
    @required bool isSelected,
    @required num index,
    // @required int color,
    // @required List<TodoItemDto> todos,
  }) = _SoldQuotationDto;

  factory SoldQuotationDto.fromDomain(Quotation quotation, String userID) {
    return SoldQuotationDto(
      id: quotation.id!.getOrCrash(),
      title: quotation.title!.getOrCrash(),
      rate: quotation.rate!.getOrCrash(),
      quantity: quotation.quantity!.getOrCrash(),
      measuremntUnit: quotation.measuremntUnit!.getOrCrash(),
      isSelected: quotation.isSelected!.getOrCrash(),
      index: quotation.index!.getOrCrash(),
      userID: userID,
      /*  color: quotation.color.getOrCrash().value,
      //todos: quotation.todos
          .getOrCrash()
          .map(
            (todoItem) => TodoItemDto.fromDomain(todoItem),
          )
          .asList(), */
    );
  }

  Quotation toDomain() {
    return Quotation(
      id: UniqueId.fromUniqueString(id),
      title: QuotationTitle(title),
      measuremntUnit: QuotationUnit(measuremntUnit),
      quantity: QuotationQuantity(quantity),
      rate: QuotationRate(rate),
      isSelected: QuotationSelected(isSelected),
      index: QuotationIndex(index),

      // isEditing: false
      /*  color: QuotationColor(Color(color)),
      //todos: List3(todos.map((dto) => dto.toDomain()).toImmutableList()), */
    );
  }

  factory SoldQuotationDto.fromJson(Map<String, dynamic> json) =>
      _$SoldQuotationDtoFromJson(json);
//below this is not required
  factory SoldQuotationDto.fromFirestore(DocumentSnapshot doc) {
    return SoldQuotationDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
