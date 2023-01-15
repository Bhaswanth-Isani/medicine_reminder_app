import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:medicine_reminder_app/auth/presentation/create_account_page.dart';
import 'package:medicine_reminder_app/medicine/presentation/medicine.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: CreateAccountPage, initial: true),
    AutoRoute(page: MedicinePage, guards: [AuthGuard]),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required super.authGuard});
}

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.authenticated});

  final bool authenticated;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authenticated) {
      resolver.next();
    } else {
      router.replace(const CreateAccountRoute());
    }
  }
}
