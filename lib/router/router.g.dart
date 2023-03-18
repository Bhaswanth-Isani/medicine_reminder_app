// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $createAccountRoute,
      $loginRoute,
      $dashboardRoute,
    ];

GoRoute get $createAccountRoute => GoRouteData.$route(
      path: '/create-account',
      factory: $CreateAccountRouteExtension._fromState,
    );

extension $CreateAccountRouteExtension on CreateAccountRoute {
  static CreateAccountRoute _fromState(GoRouterState state) =>
      const CreateAccountRoute();

  String get location => GoRouteData.$location(
        '/create-account',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

GoRoute get $loginRoute => GoRouteData.$route(
      path: '/login',
      factory: $LoginRouteExtension._fromState,
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

GoRoute get $dashboardRoute => GoRouteData.$route(
      path: '/',
      factory: $DashboardRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'medicine',
          factory: $MedicineFormRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'list',
          factory: $RemindersRouteExtension._fromState,
        ),
      ],
    );

extension $DashboardRouteExtension on DashboardRoute {
  static DashboardRoute _fromState(GoRouterState state) =>
      const DashboardRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $MedicineFormRouteExtension on MedicineFormRoute {
  static MedicineFormRoute _fromState(GoRouterState state) =>
      const MedicineFormRoute();

  String get location => GoRouteData.$location(
        '/medicine',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $RemindersRouteExtension on RemindersRoute {
  static RemindersRoute _fromState(GoRouterState state) =>
      const RemindersRoute();

  String get location => GoRouteData.$location(
        '/list',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
