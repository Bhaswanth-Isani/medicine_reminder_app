import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/application.dart';
import 'package:medicine_reminder_app/auth/presentation/widgets/widgets.dart';

class ForgotPasswordForm extends HookConsumerWidget {
  const ForgotPasswordForm({super.key});

  void onEditEmail(WidgetRef ref, PageController pageController) {
    ref.read(forgotPasswordFormControllerProvider.notifier).updateOTP('');
    pageController.jumpToPage(0);
    ref
        .read(forgotPasswordFormControllerProvider.notifier)
        .onSubmit(showErrors: false);
  }

  void onVerifyOTP(WidgetRef ref, PageController pageController) {
    final forgotPasswordFormState =
        ref.read(forgotPasswordFormControllerProvider);

    if (forgotPasswordFormState.otp.value ==
        ref
            .read(
              authControllerProvider.select((value) => value.otp),
            )
            ?.value) {
      pageController.jumpToPage(2);
      ref
          .read(forgotPasswordFormControllerProvider.notifier)
          .onSubmit(showErrors: false);
    } else {
      ref.read(forgotPasswordFormControllerProvider.notifier).onSubmit();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final showError = ref.watch(
      forgotPasswordFormControllerProvider.select((value) => value.showErrors),
    );

    return SizedBox(
      height: 260,
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: _VerifyEmail(pageController: pageController),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: VerifyOTPForm(
              showError: showError,
              validator: (_) => ref
                  .read(
                    forgotPasswordFormControllerProvider
                        .select((value) => value.otp),
                  )
                  .validator(),
              onChanged: ref
                  .read(forgotPasswordFormControllerProvider.notifier)
                  .updateOTP,
              onEditEmail: () => onEditEmail(ref, pageController),
              onSubmit: () => onVerifyOTP(ref, pageController),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(24),
            child: _ChangePassword(),
          ),
        ],
      ),
    );
  }
}

class _VerifyEmail extends ConsumerWidget {
  const _VerifyEmail({required this.pageController});

  final PageController pageController;

  Future<void> onSendOTP(WidgetRef ref, PageController pageController) async {
    final forgotPasswordFormState =
        ref.read(forgotPasswordFormControllerProvider);

    if (forgotPasswordFormState.email.isValid()) {
      await ref.read(authControllerProvider.notifier).sendOTP(
            email: forgotPasswordFormState.email,
            isRegister: false,
          );
      pageController.jumpToPage(1);
    } else {
      ref.read(forgotPasswordFormControllerProvider.notifier).onSubmit();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forgotPasswordFormState =
        ref.watch(forgotPasswordFormControllerProvider);
    final isLoading =
        ref.watch(authControllerProvider.select((value) => value.isLoading));

    return Form(
      autovalidateMode: forgotPasswordFormState.showErrors
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AuthTextFormField(
            isLoading: isLoading,
            initialValue:
                ref.read(forgotPasswordFormControllerProvider).email.value,
            isEmail: true,
            label: 'Email',
            onChanged: ref
                .read(forgotPasswordFormControllerProvider.notifier)
                .updateEmail,
            validator: (_) => ref
                .read(
                  forgotPasswordFormControllerProvider
                      .select((value) => value.email),
                )
                .validator(),
          ),
          const SizedBox(height: 24),
          AuthButton(
            isLoading: isLoading,
            label: 'Send OTP',
            onPressed: () => onSendOTP(ref, pageController),
          ),
        ],
      ),
    );
  }
}

class _ChangePassword extends ConsumerWidget {
  const _ChangePassword();

  Future<void> onChangePassword(WidgetRef ref, BuildContext context) async {
    final forgotPasswordFormState =
        ref.read(forgotPasswordFormControllerProvider);

    if (forgotPasswordFormState.newPassword.isValid()) {
      await ref.read(authControllerProvider.notifier).forgotPassword(
            email: forgotPasswordFormState.email,
            newPassword: forgotPasswordFormState.newPassword,
            otp: forgotPasswordFormState.otp,
          );

      ref.read(forgotPasswordFormControllerProvider.notifier).reset();

      // ignore: use_build_context_synchronously
      context.pop();
    } else {
      ref.read(forgotPasswordFormControllerProvider.notifier).onSubmit();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forgotPasswordFormState =
        ref.watch(forgotPasswordFormControllerProvider);
    final isLoading =
        ref.watch(authControllerProvider.select((value) => value.isLoading));

    return Form(
      autovalidateMode: forgotPasswordFormState.showErrors
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AuthTextFormField(
            isLoading: isLoading,
            initialValue: ref
                .read(forgotPasswordFormControllerProvider)
                .newPassword
                .value,
            isPassword: true,
            label: 'New Password',
            onChanged: ref
                .read(forgotPasswordFormControllerProvider.notifier)
                .updateNewPassword,
            validator: (_) => ref
                .read(
                  forgotPasswordFormControllerProvider
                      .select((value) => value.newPassword),
                )
                .validator(),
          ),
          const SizedBox(height: 24),
          AuthButton(
            isLoading: isLoading,
            label: 'Change Password',
            onPressed: () => onChangePassword(ref, context),
          ),
        ],
      ),
    );
  }
}
