import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/auth/auth.dart';
import 'package:medicine_reminder_app/core/core.dart';

/// Takes in multiple widgets each for different screen sizes and displays them
/// accordingly for each screen size and platform.
class PatrioLayout extends ConsumerWidget {
  const PatrioLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
    this.appBar,
    this.floatingActionButton,
  });

  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;
  final AppBar? appBar;
  final FloatingActionButton? floatingActionButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final platform = Theme.of(context).platform;

    ref.listen(
      authControllerProvider.select((value) => value.successOrFailure),
      (previous, next) {
        if (next != null && next.isLeft()) {
          next.fold(
            (failure) {
              if (failure is CoreInfrastructureFailure) {
                failure.when(
                  serverError: () => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Server Error. Please try again later.'),
                    ),
                  ),
                  databaseError: () =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Database Error. Please try again later.'),
                    ),
                  ),
                  invalidData: () => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('You have provided invalid data.'),
                    ),
                  ),
                  unauthorized: () =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('You are not authorized')),
                  ),
                );
              } else if (failure is AuthInfrastructureFailure) {
                failure.when(
                  userAlreadyExists: () =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'You are not logged in. Please log in and try again.',
                      ),
                    ),
                  ),
                  invalidCredentials: () =>
                      ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('Invalid Email or Password have been provided.'),
                    ),
                  ),
                );
              }
            },
            (_) => null,
          );
        }
      },
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).scaffoldBackgroundColor,
        systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
        statusBarIconBrightness:
            Theme.of(context).brightness == Brightness.light
                ? Brightness.dark
                : Brightness.light,
      ),
      child: Scaffold(
        appBar: appBar,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final shortestSide = MediaQuery.of(context).size.shortestSide;
            if (RunningPlatform(platform).isMobile && shortestSide < 600) {
              return mobileLayout;
            } else if (RunningPlatform(platform).isMobile) {
              return tabletLayout;
            } else if (RunningPlatform(platform).isDesktop) {
              return desktopLayout;
            } else {
              return const Placeholder();
            }
          },
        ),
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
