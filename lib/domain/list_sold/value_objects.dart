import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
// import 'package:_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_validators.dart';
// import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 100;

  factory List3(KtList<T> input) {
    assert(input != null);
    return List3._(
      validateMaxKtListLength(input, maxLength),
    );
  }

  const List3._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  // final bool emailExist;
  factory EmailAddress(String input, bool emailExist) {
    assert(input != null);
    return EmailAddress._(
      validateEmailExistence(input, emailExist)
      // validateEmailAddress(input).flatMap(validateEmailExistence(input,emailExist))
      // validateEmailExistence(input).flatMap(validateEmailAddress)
      ,
    );
  }

  const EmailAddress._(this.value);
}

class SoldTotal extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;

  // static const maxLength = 1000;
  static const maxLength = 50;

  factory SoldTotal(num input) {
    if (input == null) {
      input = 0;
    }
    assert(input != null);
    return SoldTotal._(
      validateNumberNegative(input),
    );
  }

  const SoldTotal._(this.value);
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

class UserIdListSold extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 2000;

  factory UserIdListSold(String input) {
    assert(input != null);
    return UserIdListSold._(
      validateMaxStringLength(input, maxLength),
    );
  }

  const UserIdListSold._(this.value);
}
