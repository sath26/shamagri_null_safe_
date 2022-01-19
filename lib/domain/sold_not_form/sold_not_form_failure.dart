import 'package:freezed_annotation/freezed_annotation.dart';

part 'sold_not_form_failure.freezed.dart';

@freezed
abstract class SoldNotFormFailure with _$SoldNotFormFailure {
  const factory SoldNotFormFailure.unexpected() = _Unexpected;
  const factory SoldNotFormFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory SoldNotFormFailure.unableToUpdate() = _UnableToUpdate;
  const factory SoldNotFormFailure.isEmpty() = _IsEmpty;
}
