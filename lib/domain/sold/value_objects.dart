import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
// import 'package:_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_validators.dart';
// import 'package:shamagri_latest_flutter_version/domain/quotation_reso/quotation.dart';

class List3Sold<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 100;

  factory List3Sold(KtList<T> input) {
    assert(input != null);
    return List3Sold._(
      validateMaxKtListLength(input, maxLength),
    );
  }

  const List3Sold._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

class EmailAddressBought extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  // final bool emailExist;
  factory EmailAddressBought(String input, bool emailExist) {
    assert(input != null);
    return EmailAddressBought._(
      validateEmailExistence(input, emailExist)
      // validateEmailAddressBought(input).flatMap(validateEmailExistence(input,emailExist))
      // validateEmailExistence(input).flatMap(validateEmailAddressBought)
      ,
    );
  }

  const EmailAddressBought._(this.value);
}

class EmailAddressSold extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddressSold(String input) {
    assert(input != null);
    return EmailAddressSold._(
      validateEmailAddress(input),
    );
  }

  const EmailAddressSold._(this.value);
}

class SoldTotalHere extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;

  // static const maxLength = 1000;
  static const maxLength = 50;

  factory SoldTotalHere(num input) {
    assert(input != null);
    return SoldTotalHere._(
      validateNumberNegative(input),
    );
  }

  const SoldTotalHere._(this.value);
}

class UserIdSold extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 2000;

  factory UserIdSold(String input) {
    assert(input != null);
    return UserIdSold._(
      validateMaxStringLength(input, maxLength),
    );
  }

  const UserIdSold._(this.value);
}

class UserPhotoUrlSold extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 2000;

  factory UserPhotoUrlSold(String input) {
    assert(input != null);
    return UserPhotoUrlSold._(
      validateMaxStringLength(input, maxLength),
    );
  }

  const UserPhotoUrlSold._(this.value);
}

class UserDisplayNameSold extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory UserDisplayNameSold(String input) {
    assert(input != null);
    return UserDisplayNameSold._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const UserDisplayNameSold._(this.value);
}

class SoldApproved extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;

  factory SoldApproved(bool input) {
    assert(input != null);
    return SoldApproved._(validateBool(input));
  }

  const SoldApproved._(this.value);
}
