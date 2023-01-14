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
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MedicineRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const MedicinePage(),
      );
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          MedicineRoute.name,
          path: '/',
        )
      ];
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
