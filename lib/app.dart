import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/auth.dart';
import 'package:medicine_reminder_app/router/router.dart';
import 'package:medicine_reminder_app/theme/theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final platform = Theme.of(context).platform;

    final router = GoRouter(
      routes: $appRoutes,
      debugLogDiagnostics: true,
      initialLocation: const SplashRoute().location,
      redirect: (context, state) {
        final authState =
            ref.watch(authControllerProvider.select((value) => value.admin));

        return authState == null
            ? state.location == const LoginRoute().location ||
                    state.location == const SplashRoute().location
                ? const LoginRoute().location
                : const CreateAccountRoute().location
            : const DashboardRoute().location;
      },
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Patrio',
      theme: PatrioLightTheme(platform).theme(),
      darkTheme: PatrioDarkTheme(platform).theme(),
      routerConfig: router,
    );
  }
}
