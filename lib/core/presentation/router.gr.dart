// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    CreateAccountRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const CreateAccountPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    MedicineRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MedicinePage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          CreateAccountRoute.name,
          path: '/create-account-page',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        RouteConfig(
          MedicineRoute.name,
          path: '/',
          guards: [authGuard],
        ),
      ];
}

/// generated route for
/// [CreateAccountPage]
class CreateAccountRoute extends PageRouteInfo<void> {
  const CreateAccountRoute()
      : super(
          CreateAccountRoute.name,
          path: '/create-account-page',
        );

  static const String name = 'CreateAccountRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [MedicinePage]
class MedicineRoute extends PageRouteInfo<void> {
  const MedicineRoute()
      : super(
          MedicineRoute.name,
          path: '/',
        );

  static const String name = 'MedicineRoute';
}
