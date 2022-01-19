import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_list_manager/flutter_bloc_list_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';
import 'package:shamagri_latest_flutter_version/domain/quotation_reso/value_objects.dart';

part 'quotation_dtos.freezed.dart';
part 'quotation_dtos.g.dart';

@freezed
abstract class QuotationDto implements _$QuotationDto {
  const QuotationDto._();

  const factory QuotationDto({
    @JsonKey(ignore: true) String? id1,
    @required String? title,
    @required String? measuremntUnit,
    @required num? rate,
    @required num? quantity,
    @required String? userID,
    @required bool? isSelected,
    @required num? index,
    // @required int color,
    // @required List<TodoItemDto> todos,
    @required @ServerTimestampConverter() FieldValue? createdAt,
  }) = _QuotationDto;

  factory QuotationDto.fromDomain(Quotation quotation, String userID) {
    return QuotationDto(
      id1: quotation.id!.getOrCrash(),
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
      createdAt: FieldValue.serverTimestamp(),
    );
  }

  Quotation toDomain() {
    return Quotation(
      id: UniqueId.fromUniqueString(id1!),
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

  factory QuotationDto.fromJson(Map<String, dynamic> json) =>
      _$QuotationDtoFromJson(json);

  factory QuotationDto.fromFirestore(DocumentSnapshot doc) {
    return QuotationDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id1: doc.id);
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
