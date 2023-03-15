import 'package:medicine_reminder_app/core/domain/user/user_validators.dart';
import 'package:medicine_reminder_app/core/domain/validators.dart';
import 'package:medicine_reminder_app/core/domain/value_object.dart';
import 'package:medicine_reminder_app/type_defs.dart';

/// Create an EmailAddress which extends ValueObject and checks if the input
/// resembles email.
class EmailAddress extends ValueObject<String> {
  factory EmailAddress(String input) {
    return EmailAddress._(
      validatedValue: validateEmailAddress(input),
      value: input,
    );
  }

  EmailAddress._({required this.validatedValue, required this.value});

  @override
  String? validator() {
    return validatedValue.fold(
      (failure) => 'Enter a valid Email.',
      (_) => null,
    );
  }

  @override
  final EitherFailure<String> validatedValue;

  @override
  final String value;
}

/// Create a Password which extends ValueObject and checks if the input
/// password is of length 6 characters.
class Password extends ValueObject<String> {
  factory Password(String input) {
    return Password._(
      validatedValue: validateMinLengthString(input, 6),
      value: input,
    );
  }

  Password._({required this.validatedValue, required this.value});

  @override
  String? validator() {
    return validatedValue.fold(
      (failure) => 'Password should be of at least 6 characters.',
      (_) => null,
    );
  }

  @override
  final EitherFailure<String> validatedValue;

  @override
  final String value;
}

/// Create a Username which extends ValueObject and checks if the input
/// password is of length 3 characters.
class Username extends ValueObject<String> {
  factory Username(String input) {
    return Username._(
      validatedValue: validateMinLengthString(input, 3),
      value: input,
    );
  }

  Username._({required this.validatedValue, required this.value});

  @override
  String? validator() {
    return validatedValue.fold(
      (failure) => 'Username should be of at least 3 characters.',
      (_) => null,
    );
  }

  @override
  final EitherFailure<String> validatedValue;

  @override
  final String value;
}

/// Create a OTP which extends ValueObject and checks if the otp is of length 6
/// characters.
class OTP extends ValueObject<String> {
  factory OTP(String input) {
    return OTP._(
      validatedValue: validateOTP(input),
      value: input,
    );
  }

  OTP._({required this.validatedValue, required this.value});

  @override
  String? validator() {
    return validatedValue.fold(
      (failure) => 'Enter a valid OTP.',
      (_) => null,
    );
  }

  @override
  final EitherFailure<String> validatedValue;

  @override
  final String value;
}
