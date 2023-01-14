import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:medicine_reminder_app/medicine/presentation/medicine.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MedicinePage, initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
