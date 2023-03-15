import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medicine_reminder_app/app.dart';
import 'package:medicine_reminder_app/core/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kReleaseMode) {
    await dotenv.load();
  } else {
    await dotenv.load(fileName: '.env.development');
  }

  runApp(
    ProviderScope(
      observers: [RiverpodObserver()],
      child: const App(),
    ),
  );
}
