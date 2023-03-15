import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/application.dart';
import 'package:medicine_reminder_app/auth/presentation/widgets/widgets.dart';

class MobileCreateAccountLayout extends HookConsumerWidget {
  const MobileCreateAccountLayout({super.key});

  Future<void> onCreateAccount(
    PageController pageController,
    WidgetRef ref,
  ) async {
    final authFormState = ref.read(authFormControllerProvider);

    if (authFormState.username.isValid() &&
        authFormState.email.isValid() &&
        authFormState.password.isValid()) {
      await ref
          .read(authControllerProvider.notifier)
          .sendOTP(email: authFormState.email, isRegister: true);

      if (ref.read(authControllerProvider).otp != null) {
        pageController.jumpToPage(1);
        ref
            .read(authFormControllerProvider.notifier)
            .onSubmit(showErrors: false);
      }
    } else {
      ref.read(authFormControllerProvider.notifier).onSubmit();
    }
  }

  void onEditEmail(PageController pageController, WidgetRef ref) {
    ref.read(authFormControllerProvider.notifier).updateOTP('');
    pageController.jumpToPage(0);
    ref.read(authFormControllerProvider.notifier).onSubmit(showErrors: false);
  }

  Future<void> onVerifyOTP(WidgetRef ref) async {
    final authFormState = ref.read(authFormControllerProvider);

    if (authFormState.otp.value ==
        ref.read(authControllerProvider.select((value) => value.otp))?.value) {
      await ref
          .read(authControllerProvider.notifier)
          .createAccountUsingEmailAndPassword(
            username: authFormState.username,
            email: authFormState.email,
            password: authFormState.password,
          );
      ref.read(authFormControllerProvider.notifier).reset();
    } else {
      ref.read(authFormControllerProvider.notifier).onSubmit();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    final showError = ref
        .watch(authFormControllerProvider.select((value) => value.showErrors));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const AuthTitleText(
                    topTitle: 'Welcome to',
                    mediumTitle: 'Patrio',
                    bottomTitle: 'Company',
                  ),
                  SizedBox(
                    height: 350,
                    child: PageView(
                      controller: pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        CreateAccountForm(
                          onSubmit: () => onCreateAccount(pageController, ref),
                        ),
                        VerifyOTPForm(
                          showError: showError,
                          validator: (_) => ref
                              .read(
                                authFormControllerProvider
                                    .select((value) => value.otp),
                              )
                              .validator(),
                          onChanged: ref
                              .read(authFormControllerProvider.notifier)
                              .updateOTP,
                          onEditEmail: () => onEditEmail(pageController, ref),
                          onSubmit: () => onVerifyOTP(ref),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
