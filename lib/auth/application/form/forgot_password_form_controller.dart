import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/form/forgot_password_form_state.dart';
import 'package:medicine_reminder_app/core/core.dart';

abstract class BaseForgotPasswordFormController {
  void updateEmail(String email);
  void updateOTP(String otp);
  void updateNewPassword(String newPassword);
  void onSubmit({bool showErrors = true});
  void reset();
}

final forgotPasswordFormControllerProvider = StateNotifierProvider<
    ForgotPasswordFormController,
    ForgotPasswordFormState>((ref) => ForgotPasswordFormController());

class ForgotPasswordFormController
    extends StateNotifier<ForgotPasswordFormState>
    implements BaseForgotPasswordFormController {
  ForgotPasswordFormController() : super(ForgotPasswordFormState.initial());

  @override
  void updateEmail(String email) {
    state = state.copyWith(email: EmailAddress(email));
  }

  @override
  void updateOTP(String otp) {
    state = state.copyWith(otp: OTP(otp));
  }

  @override
  void updateNewPassword(String newPassword) {
    state = state.copyWith(newPassword: Password(newPassword));
  }

  @override
  void onSubmit({bool showErrors = true}) {
    state = state.copyWith(showErrors: showErrors);
  }

  @override
  void reset() {
    state = ForgotPasswordFormState.initial();
  }
}
