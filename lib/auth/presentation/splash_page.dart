import 'package:flutter/material.dart';
import 'package:medicine_reminder_app/core/core.dart';
import 'package:medicine_reminder_app/theme/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PatrioLayout(
      mobileLayout: SplashWidget(),
      tabletLayout: SplashWidget(),
      desktopLayout: SplashWidget(),
    );
  }
}

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: PatrioPalette.linearGradient.colors,
          ).createShader(bounds);
        },
        child: Text(
          'Patrio',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
