import 'package:medicine_reminder_app/dashboard/infrastructure/medicine_local_repository.dart';
import 'package:medicine_reminder_app/dashboard/infrastructure/medicine_server_repository.dart';

class MedicineRepository {
  MedicineRepository({required this.server, required this.local});

  final MedicineServerRepository server;
  final MedicineLocalRepository local;
}
