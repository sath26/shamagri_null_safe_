import 'package:freezed_annotation/freezed_annotation.dart';

part 'sold_failure.freezed.dart';

@freezed
abstract class SoldFailure with _$SoldFailure {
  const factory SoldFailure.unexpected() = _Unexpected;
  const factory SoldFailure.insufficientPermission() = _InsufficientPermission;
  const factory SoldFailure.unableToUpdate() = _UnableToUpdate;
}
