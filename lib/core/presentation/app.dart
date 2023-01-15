import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/core/application/router_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(elevation: 0),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      routerDelegate: AutoRouterDelegate(
        router,
        navigatorObservers: () => [AutoRouterObserver()],
      ),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
