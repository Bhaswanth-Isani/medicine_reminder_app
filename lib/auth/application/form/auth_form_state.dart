import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicine_reminder_app/core/core.dart';

part 'auth_form_state.freezed.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required Username username,
    required EmailAddress email,
    required Password password,
    required OTP otp,
    required bool showErrors,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
        username: Username(''),
        email: EmailAddress(''),
        password: Password(''),
        otp: OTP(''),
        showErrors: false,
      );
}
