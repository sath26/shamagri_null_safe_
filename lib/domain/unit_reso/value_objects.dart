import 'package:dartz/dartz.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_validators.dart';

class UnitBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory UnitBody(String input) {
    assert(input != null);
    return UnitBody._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const UnitBody._(this.value);
}
