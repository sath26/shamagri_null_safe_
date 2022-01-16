import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_bought_failure.freezed.dart';

@freezed
abstract class ListBoughtFailure with _$ListBoughtFailure {
  const factory ListBoughtFailure.unexpected() = _Unexpected;
  const factory ListBoughtFailure.insufficientPermission() =
      _InsufficientPermission;
  const factory ListBoughtFailure.unableToUpdate() = _UnableToUpdate;
  const factory ListBoughtFailure.isEmpty() = _IsEmpty;
}
