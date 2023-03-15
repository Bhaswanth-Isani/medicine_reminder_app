import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medicine_reminder_app/core/core.dart';

part 'forgot_password_form_state.freezed.dart';

@freezed
class ForgotPasswordFormState with _$ForgotPasswordFormState {
  const factory ForgotPasswordFormState({
    required EmailAddress email,
    required OTP otp,
    required Password newPassword,
    required bool showErrors,
  }) = _ForgotPasswordFormState;

  factory ForgotPasswordFormState.initial() => ForgotPasswordFormState(
        email: EmailAddress(''),
        otp: OTP(''),
        newPassword: Password(''),
        showErrors: false,
      );
}
