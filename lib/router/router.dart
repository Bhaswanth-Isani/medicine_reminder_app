import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicine_reminder_app/auth/auth.dart';
import 'package:medicine_reminder_app/dashboard/dashboard.dart';
import 'package:medicine_reminder_app/dashboard/presentation/medicine_form.dart';
import 'package:medicine_reminder_app/dashboard/presentation/reminders_page.dart';

part 'router.g.dart';

@TypedGoRoute<CreateAccountRoute>(path: '/create-account')
class CreateAccountRoute extends GoRouteData {
  const CreateAccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CreateAccountPage();
}

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginPage();
}

@TypedGoRoute<DashboardRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<MedicineFormRoute>(path: 'medicine'),
    TypedGoRoute<RemindersRoute>(path: 'list'),
  ],
)
class DashboardRoute extends GoRouteData {
  const DashboardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const DashboardPage();
}

class MedicineFormRoute extends GoRouteData {
  const MedicineFormRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MedicineForm();
}

class RemindersRoute extends GoRouteData {
  const RemindersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RemindersPage();
}
