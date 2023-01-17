import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/application/auth_repository.dart';
import 'package:medicine_reminder_app/auth/presentation/create_account_page.dart';
import 'package:medicine_reminder_app/auth/presentation/login_page.dart';
import 'package:medicine_reminder_app/medicine/presentation/medicine_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: CreateAccountPage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: MedicinePage, guards: [AuthGuard], initial: true),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required super.authGuard});
}

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.ref});

  final Ref ref;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (ref.read(authRepositoryProvider).user != null) {
      resolver.next();
    } else {
      router.replace(const CreateAccountRoute());
    }
  }
}
