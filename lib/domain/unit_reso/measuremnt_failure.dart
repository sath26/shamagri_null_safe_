import 'package:freezed_annotation/freezed_annotation.dart';

part 'measuremnt_failure.freezed.dart';

@freezed
abstract class UnitFailure with _$UnitFailure {
  const factory UnitFailure.unexpected() = _Unexpected;
  const factory UnitFailure.insufficientPermission() = _InsufficientPermission;
  const factory UnitFailure.unableToUpdate() = _UnableToUpdate;
}
