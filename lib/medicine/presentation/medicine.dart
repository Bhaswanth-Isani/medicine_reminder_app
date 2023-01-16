import 'package:auto_route/auto_route.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/auth_repository.dart';
import 'package:medicine_reminder_app/core/presentation/router.dart';

class MedicinePage extends ConsumerWidget {
  const MedicinePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medicine'),
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            context.replaceRoute(const LoginRoute());
            ref.read(authRepositoryProvider.notifier).signOut();
          },
          icon: const Icon(FeatherIcons.logOut),
        ),
      ),
    );
  }
}
