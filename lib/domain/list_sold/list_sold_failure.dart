import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_sold_failure.freezed.dart';

@freezed
abstract class ListSoldFailure with _$ListSoldFailure {
  const factory ListSoldFailure.unexpected() = _Unexpected;
  const factory ListSoldFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory ListSoldFailure.unableToUpdate() = _UnableToUpdate;
  const factory ListSoldFailure.isEmpty() = _IsEmpty;
}
