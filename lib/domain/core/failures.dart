import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    @required T? failedValue,
    @required int? max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.numberTooBig({
    @required T? failedValue,
    @required num? max,
  }) = NumberTooBig<T>;
  const factory ValueFailure.numberNegative({
    @required T? failedValue,
    @required num? negative,
  }) = NumberNegative<T>;
  const factory ValueFailure.numberZero({
    @required T? failedValue,
    @required num? zero,
  }) = NumberZero<T>;
  const factory ValueFailure.empty({
    @required T? failedValue,
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    @required T? failedValue,
  }) = Multiline<T>;
  const factory ValueFailure.listTooLong({
    @required T? failedValue,
    @required int? max,
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({
    @required T? failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.notSignedUp({
    @required T? failedValue,
  }) = NotSignedUp<T>;
  const factory ValueFailure.shortPassword({
    @required T? failedValue,
  }) = ShortPassword<T>;
}
