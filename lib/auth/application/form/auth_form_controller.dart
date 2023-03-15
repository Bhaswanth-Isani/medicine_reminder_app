import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/form/auth_form_state.dart';
import 'package:medicine_reminder_app/core/core.dart';

abstract class BaseAuthFormController {
  void updateUsername(String username);
  void updateEmail(String email);
  void updatePassword(String password);
  void updateOTP(String otp);
  void onSubmit({bool showErrors = true});
  void reset();
}

final authFormControllerProvider =
    StateNotifierProvider<AuthFormController, AuthFormState>(
  (ref) => AuthFormController(),
);

class AuthFormController extends StateNotifier<AuthFormState>
    implements BaseAuthFormController {
  AuthFormController() : super(AuthFormState.initial());

  @override
  void updateUsername(String username) {
    state = state.copyWith(username: Username(username));
  }

  @override
  void updateEmail(String email) {
    state = state.copyWith(email: EmailAddress(email));
  }

  @override
  void updatePassword(String password) {
    state = state.copyWith(password: Password(password));
  }

  @override
  void updateOTP(String otp) {
    state = state.copyWith(otp: OTP(otp));
  }

  @override
  void onSubmit({bool showErrors = true}) {
    state = state.copyWith(showErrors: showErrors);
  }

  @override
  void reset() {
    state = AuthFormState.initial();
  }
}
