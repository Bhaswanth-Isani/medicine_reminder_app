import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:medicine_reminder_app/auth/infrastructure/auth_local_client.dart';
import 'package:medicine_reminder_app/medicine/infrastructure/medicine_local_client.dart';

final isarClientProvider = Provider<Isar>(
  (ref) => Isar.openSync([
    AuthLocalClientSchema,
    MedicineLocalClientSchema,
  ]),
);
