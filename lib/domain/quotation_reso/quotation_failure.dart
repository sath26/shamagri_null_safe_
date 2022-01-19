import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotation_failure.freezed.dart';

@freezed
abstract class QuotationFailure with _$QuotationFailure {
  const factory QuotationFailure.unexpected() = _Unexpected;
  const factory QuotationFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory QuotationFailure.unableToUpdate() = _UnableToUpdate;
  const factory QuotationFailure.isEmpty() = _IsEmpty;
}
