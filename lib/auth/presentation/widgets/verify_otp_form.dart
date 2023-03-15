import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/application.dart';
import 'package:medicine_reminder_app/auth/presentation/widgets/widgets.dart';

class VerifyOTPForm extends ConsumerWidget {
  const VerifyOTPForm({
    super.key,
    required this.onEditEmail,
    required this.onSubmit,
    required this.onChanged,
    required this.validator,
    required this.showError,
  });

  final void Function()? onEditEmail;
  final void Function()? onSubmit;
  final String? Function(String?) validator;
  final void Function(String) onChanged;
  final bool showError;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading =
        ref.watch(authControllerProvider.select((value) => value.isLoading));

    return Form(
      autovalidateMode:
          showError ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          AuthTextFormField(
            isLoading: isLoading,
            isOTP: true,
            label: 'OTP',
            validator: validator,
            onChanged: onChanged,
          ),
          const SizedBox(height: 24),
          AuthButton(
            isLoading: isLoading,
            label: 'Verify OTP',
            onPressed: onSubmit,
          ),
          AuthTextButton(label: 'Edit Email', onPressed: onEditEmail),
        ],
      ),
    );
  }
}
