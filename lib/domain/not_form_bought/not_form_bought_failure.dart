import 'package:freezed_annotation/freezed_annotation.dart';

part 'not_form_bought_failure.freezed.dart';

@freezed
abstract class BoughtNotFormFailure with _$BoughtNotFormFailure {
  const factory BoughtNotFormFailure.unexpected() = _Unexpected;
  const factory BoughtNotFormFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory BoughtNotFormFailure.unableToUpdate() = _UnableToUpdate;
  const factory BoughtNotFormFailure.isEmpty() = _IsEmpty;
}
