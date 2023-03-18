import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:medicine_reminder_app/core/core.dart';
import 'package:medicine_reminder_app/dashboard/domain/medicine.dart';
import 'package:medicine_reminder_app/dashboard/infrastructure/medicine_isar.dart';

final medicineLocalRepositoryProvider = Provider<MedicineLocalRepository>(
  (ref) {
    final isar = ref.watch(isarClientProvider);

    return MedicineLocalRepository(isar);
  },
);

class MedicineLocalRepository {
  MedicineLocalRepository(this._isar);

  final Isar _isar;

  Either<InfrastructureFailure, MedicineIsar> saveMedicine(Medicine medicine) {
    final medicineIsar = MedicineIsar()
      ..id = medicine.id
      ..name = medicine.name
      ..compartment = medicine.compartment
      ..number = medicine.number
      ..userID = medicine.userID
      ..time = medicine.time.map(DateTime.parse).toList();

    try {
      _isar.writeTxnSync(() => _isar.medicineIsars.putSync(medicineIsar));

      return right(medicineIsar);
    } catch (_) {
      return left(const CoreInfrastructureFailure.databaseError());
    }
  }

  Either<InfrastructureFailure, List<MedicineIsar>> getMedicines() {
    try {
      return right(_isar.medicineIsars.where().findAllSync());
    } catch (_) {
      return left(const CoreInfrastructureFailure.databaseError());
    }
  }
}
