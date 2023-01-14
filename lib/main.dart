import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/core/application/riverpod_observer.dart';
import 'package:medicine_reminder_app/core/presentation/app.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [
        RiverpodObserver(),
      ],
      child: const App(),
    ),
  );
}