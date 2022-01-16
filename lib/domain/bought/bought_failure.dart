import 'package:freezed_annotation/freezed_annotation.dart';

part 'bought_failure.freezed.dart';

@freezed
abstract class BoughtFailure with _$BoughtFailure {
  const factory BoughtFailure.unexpected() = _Unexpected;
  const factory BoughtFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory BoughtFailure.unableToUpdate() = _UnableToUpdate;
}
