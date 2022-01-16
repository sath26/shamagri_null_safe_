// import 'dart:ffi';
import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:shamagri_latest_flutter_version/domain/core/failures.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_objects.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_transformers.dart';
import 'package:shamagri_latest_flutter_version/domain/core/value_validators.dart';

class QuotationTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory QuotationTitle(String input) {
    assert(input != null);
    return QuotationTitle._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const QuotationTitle._(this.value);
}

class QuotationIndex extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;

  // static const maxLength = 1000;
  static const maxLength = 100;

  factory QuotationIndex(num input) {
    assert(input != null);
    return QuotationIndex._(
      validateNumberNegative(input).flatMap(validateNumberTooBig),
    );
  }

  const QuotationIndex._(this.value);
}

class QuotationRate extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;

  // static const maxLength = 1000;
  static const maxLength = 5;

  factory QuotationRate(num input) {
    assert(input != null);
    return QuotationRate._(
      validateNumberNegative(input)
          .flatMap(validateNumberTooBig)
          .flatMap(validateNumberNotEmpty),
    );
  }

  const QuotationRate._(this.value);
}

class QuotationQuantity extends ValueObject<num> {
  @override
  final Either<ValueFailure<num>, num> value;

  // static const maxLength = 1000;
  static const maxLength = 5;

  factory QuotationQuantity(num input) {
    assert(input != null);
    return QuotationQuantity._(
      validateNumberNegative(input)
          .flatMap(validateNumberTooBig)
          .flatMap(validateNumberNotEmpty),
    );
  }

  const QuotationQuantity._(this.value);
}

class QuotationUnit extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory QuotationUnit(String input) {
    assert(input != null);
    return QuotationUnit._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const QuotationUnit._(this.value);
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory TodoName(String input) {
    assert(input != null);
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const TodoName._(this.value);
}

class NoteColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];

  @override
  final Either<ValueFailure<Color>, Color> value;

  factory NoteColor(Color input) {
    assert(input != null);
    return NoteColor._(
      right(makeColorOpaque(input)),
    );
  }

  const NoteColor._(this.value);
}

class QuotationSelected extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;

  factory QuotationSelected(bool input) {
    assert(input != null);
    return QuotationSelected._(validateBool(input));
  }

  const QuotationSelected._(this.value);
}

/* class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;

  factory List3(KtList<T> input) {
    assert(input != null);
    return List3._(
      validateMaxListLength(input, maxLength),
    );
  }

  const List3._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
} */
