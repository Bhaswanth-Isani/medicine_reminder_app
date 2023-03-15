import 'package:flutter/material.dart';
import 'package:medicine_reminder_app/auth/auth.dart';
import 'package:medicine_reminder_app/core/core.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PatrioLayout(
      mobileLayout: MobileCreateAccountLayout(),
      tabletLayout: MobileCreateAccountLayout(),
      desktopLayout: MobileCreateAccountLayout(),
    );
  }
}
