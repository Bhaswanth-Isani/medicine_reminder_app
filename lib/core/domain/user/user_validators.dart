import 'package:dartz/dartz.dart';
import 'package:medicine_reminder_app/core/domain/user/user_failures.dart';
import 'package:medicine_reminder_app/type_defs.dart';

/// Returns right String if the input resembles an Email Address else returns
/// left UserFailure.
EitherFailure<String> validateEmailAddress(String input) {
  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  return RegExp(emailRegex).hasMatch(input)
      ? right(input)
      : left(UserFailure.invalidEmail(failedValue: input));
}

/// Returns right String if the input is of 6 characters long else returns left
/// UserFailure.
EitherFailure<String> validateOTP(String input) {
  return input.length == 6
      ? right(input)
      : left(UserFailure.invalidOTP(failedValue: input));
}
