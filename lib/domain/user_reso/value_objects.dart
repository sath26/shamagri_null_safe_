import 'package:dartz/dartz.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const EmailAddress._(this.value);
}

class UserPhotoUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 2000;

  factory UserPhotoUrl(String input) {
    assert(input != null);
    return UserPhotoUrl._(
      validateMaxStringLength(input, maxLength),
    );
  }

  const UserPhotoUrl._(this.value);
}

class UserDisplayName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory UserDisplayName(String input) {
    assert(input != null);
    return UserDisplayName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const UserDisplayName._(this.value);
}
