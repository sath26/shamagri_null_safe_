// import 'dart:ffi';

import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
// import 'package:mobile_shamagri_bloc/domain/auth/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<num>, num> validateNumberNotEmpty(num input) {
  if (input.toString().isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<bool>, bool> validateBool(bool input) {
  if (true) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<num>, num> validateNumberTooBig(num input) {
  const num max = 10000;
  if (max.compareTo(input) < max) {
    return right(input);
  } else {
    return left(ValueFailure.numberTooBig(failedValue: input, max: max));
  }
}

Either<ValueFailure<num>, num> validateNumberNegative(num input) {
  const num negative = 0;
  if (negative.compareTo(input) <= negative) {
    return right(input);
  } else {
    return left(
        ValueFailure.numberNegative(failedValue: input, negative: negative));
  }
}

Either<ValueFailure<num>, num> validateNumberZero(num input) {
  num zero = 0;
  if (zero.compareTo(input) == zero) {
    return right(input);
  } else {
    return left(ValueFailure.numberZero(failedValue: input, zero: zero));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<List<T>>, List<T>> validateMaxListLength<T>(
  List<T> input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxKtListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

/* Future<Either<ValueFailure<String>, bool>> validateEmailExistence(
    String input) async {
  ISoldRepository _soldRepository;
  StreamSubscription<Either<SoldFailure, bool>> _soldStreamSubscription;
  await _soldStreamSubscription.cancel();

  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.notSignedUp(failedValue: input));
  }
} */
Either<ValueFailure<String>, String> validateEmailExistence(
    String input, bool emailExist) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  final validateEmail = RegExp(emailRegex).hasMatch(input);
  if (validateEmail == false) {
    return left(ValueFailure.invalidEmail(failedValue: input));
  } else if (input == "") {
    return left(ValueFailure.empty(failedValue: input));
  } else if (emailExist) {
    return right(input);
  } else {
    return left(ValueFailure.notSignedUp(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
