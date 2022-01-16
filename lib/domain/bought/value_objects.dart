import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
// import 'package:_dart/collection.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_validators.dart';
// import 'package:mobile_shamagri_bloc/domain/quotation_reso/quotation.dart';

class List3Bought<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 100;

  factory List3Bought(KtList<T> input) {
    assert(input != null);
    return List3Bought._(
      validateMaxKtListLength(input, maxLength),
    );
  }

  const List3Bought._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

/* class EmailAddressBought extends ValueObject<String> {
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
} */

class EmailAddressBought extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddressBought(String input) {
    assert(input != null);
    return EmailAddressBought._(
      validateEmailAddress(input),
    );
  }

  const EmailAddressBought._(this.value);
}

class BoughtTotalHere extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;

  // static const maxLength = 1000;
  static const maxLength = 50;

  factory BoughtTotalHere(num input) {
    assert(input != null);
    return BoughtTotalHere._(
      validateNumberNegative(input),
    );
  }

  const BoughtTotalHere._(this.value);
}

class UserIdBought extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 2000;

  factory UserIdBought(String input) {
    assert(input != null);
    return UserIdBought._(
      validateMaxStringLength(input, maxLength),
    );
  }

  const UserIdBought._(this.value);
}

class UserPhotoUrlBought extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 2000;

  factory UserPhotoUrlBought(String input) {
    assert(input != null);
    return UserPhotoUrlBought._(
      validateMaxStringLength(input, maxLength),
    );
  }

  const UserPhotoUrlBought._(this.value);
}

class UserDisplayNameBought extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory UserDisplayNameBought(String input) {
    assert(input != null);
    return UserDisplayNameBought._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const UserDisplayNameBought._(this.value);
}
