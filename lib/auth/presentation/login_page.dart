import 'package:flutter/material.dart';
import 'package:medicine_reminder_app/auth/auth.dart';
import 'package:medicine_reminder_app/core/core.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PatrioLayout(
      mobileLayout: MobileLoginLayout(),
      tabletLayout: MobileLoginLayout(),
      desktopLayout: MobileLoginLayout(),
    );
  }
}
