import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:medicine_reminder_app/core/infrastructure/infrastructure.dart';
import 'package:medicine_reminder_app/dashboard/infrastructure/medicine_isar.dart';

/// Returns an instance of Isar.
final isarClientProvider =
    Provider<Isar>((_) => Isar.openSync([AdminIsarSchema, MedicineIsarSchema]));
