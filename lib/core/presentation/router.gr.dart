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
          path: '/',
        ),
        RouteConfig(
          MedicineRoute.name,
          path: '/medicine-page',
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
          path: '/',
        );

  static const String name = 'CreateAccountRoute';
}

/// generated route for
/// [MedicinePage]
class MedicineRoute extends PageRouteInfo<void> {
  const MedicineRoute()
      : super(
          MedicineRoute.name,
          path: '/medicine-page',
        );

  static const String name = 'MedicineRoute';
}
