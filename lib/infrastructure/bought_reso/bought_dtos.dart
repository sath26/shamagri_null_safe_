import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/user.dart';
// import 'package:shamagri_latest_flutter_version/domain/auth/user.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/not_form_bought.dart';
// import 'package:shamagri_latest_flutter_version/domain/bought_reso/measuremnt.dart';
// import 'package:shamagri_latest_flutter_version/domain/bought_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/bought/bought.dart';
// import 'package:shamagri_latest_flutter_version/domain/bought/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/not_form_bought/bought_value_objects.dart'
    as bought;
// import 'package:shamagri_latest_flutter_version/domain/bought/bought.dart';
// import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
// import 'package:shamagri_latest_flutter_version/domain/user_reso/user.dart';
// import 'package:shamagri_latest_flutter_version/infrastructure/quotation_reso/quotation_dtos.dart';

part 'bought_dtos.freezed.dart';
part 'bought_dtos.g.dart';

@freezed
abstract class BoughtDto implements _$BoughtDto {
  const BoughtDto._();

  const factory BoughtDto({
    @JsonKey(ignore: true) String? boughtId,
    @required List<BoughtQuotationDto>? quotations,
    @required num? total,
    @required String? buyerEmail,
    @required String? sellerEmail,
    @required String? sellerUserId,
    @required String? buyerUserId,
    @required String? sellerDisplayName,
    @required String? buyerDisplayName,
    @required String? sellerPhotoUrl,
    @required String? buyerPhotoUrl,
    @required bool? isApproved,
    // @required int color,
    // @required List<TodoItemDto> todos,
    @required @ServerTimestampConverter() FieldValue? createdAt,
  }) = _BoughtDto;

  factory BoughtDto.fromDomain(BoughtNotForm bought, User sellerDetail,
      String buyerID, String buyerDisplayName, String buyerPhotoUrl) {
    return BoughtDto(
        boughtId: bought.id!.getOrCrash(), // + "-" + buyerID,
        quotations: bought.quotations!
            .getOrCrash()
            .map((quotation) => BoughtQuotationDto.fromDomain(
                quotation, bought.sellerUserId!.getOrCrash()))
            .asList(),
        total: bought.total!.getOrCrash(),
        sellerUserId: bought.sellerUserId!.getOrCrash(),
        buyerUserId: bought.buyerUserId!.getOrCrash(),
        sellerDisplayName: bought.sellerDisplayName!.getOrCrash(),
        buyerDisplayName: bought.buyerDisplayName!.getOrCrash(),
        sellerPhotoUrl: bought.sellerPhotoUrl!.getOrCrash(),
        buyerPhotoUrl: bought.buyerPhotoUrl!.getOrCrash(),
        buyerEmail: bought.buyerEmail!.getOrCrash(),
        sellerEmail: bought.sellerEmail!.getOrCrash(),
        createdAt: FieldValue.serverTimestamp(),
        isApproved: bought.isApproved!.getOrCrash());
  }

  BoughtNotForm toDomain() {
    return BoughtNotForm(
      id: UniqueId.fromUniqueString(boughtId!),
      buyerEmail: bought.EmailAddressBought(buyerEmail!),
      quotations: bought.List3Bought(quotations!
          .map((dto) => dto.toDomain())
          .toImmutableList()), //todo: map out like for note
      total: bought.BoughtTotalHere(total!),
      sellerEmail: bought.EmailAddressBought(sellerEmail!),

      sellerUserId: bought.UserIdBought(sellerUserId!),
      buyerUserId: bought.UserIdBought(buyerUserId!),
      sellerDisplayName: bought.UserDisplayNameBought(sellerDisplayName!),
      buyerDisplayName: bought.UserDisplayNameBought(buyerDisplayName!),
      sellerPhotoUrl: bought.UserPhotoUrlBought(sellerPhotoUrl!),
      buyerPhotoUrl: bought.UserPhotoUrlBought(buyerPhotoUrl!),
      isApproved: bought.BoughtApproved(isApproved!),
    );
  }

  factory BoughtDto.fromJson(Map<String, dynamic> json) =>
      _$BoughtDtoFromJson(json);

  factory BoughtDto.fromFirestore(DocumentSnapshot doc) {
    return BoughtDto.fromJson(doc.data() as Map<String, dynamic>)
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

@freezed
abstract class BoughtQuotationDto implements _$BoughtQuotationDto {
  const BoughtQuotationDto._();

  const factory BoughtQuotationDto({
    @required String? id,
    @required String? title,
    @required String? measuremntUnit,
    @required num? rate,
    @required num? quantity,
    @required String? userID,
    @required bool? isSelected,
    @required num? index,
    // @required int color,
    // @required List<TodoItemDto> todos,
  }) = _BoughtQuotationDto;

  factory BoughtQuotationDto.fromDomain(Quotation quotation, String userID) {
    return BoughtQuotationDto(
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
      id: UniqueId.fromUniqueString(id!),
      title: QuotationTitle(title!),
      measuremntUnit: QuotationUnit(measuremntUnit!),
      quantity: QuotationQuantity(quantity!),
      rate: QuotationRate(rate!),
      isSelected: QuotationSelected(isSelected!),
      index: QuotationIndex(index!),

      // isEditing: false
      /*  color: QuotationColor(Color(color)),
      //todos: List3(todos.map((dto) => dto.toDomain()).toImmutableList()), */
    );
  }

  factory BoughtQuotationDto.fromJson(Map<String, dynamic> json) =>
      _$BoughtQuotationDtoFromJson(json);
//below this is not required
  factory BoughtQuotationDto.fromFirestore(DocumentSnapshot doc) {
    return BoughtQuotationDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
