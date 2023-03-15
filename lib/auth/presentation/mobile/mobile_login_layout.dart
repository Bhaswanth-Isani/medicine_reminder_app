import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/presentation/widgets/widgets.dart';

class MobileLoginLayout extends ConsumerWidget {
  const MobileLoginLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  AuthTitleText(
                    topTitle: 'Login to Your',
                    mediumTitle: 'Patrio Medicine',
                    bottomTitle: 'Account',
                  ),
                  LoginForm(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
